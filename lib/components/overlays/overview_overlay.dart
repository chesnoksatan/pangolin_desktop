/*
Copyright 2021 The dahliaOS Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pangolin/components/shell/shell.dart';
import 'package:pangolin/services/customization.dart';
import 'package:pangolin/utils/data/constants.dart';
import 'package:pangolin/utils/extensions/extensions.dart';
import 'package:pangolin/utils/other/resource.dart';
import 'package:pangolin/utils/providers/locale_provider.dart';
import 'package:pangolin/utils/wm/wm.dart';
import 'package:pangolin/widgets/global/box/box_container.dart';
import 'package:pangolin/widgets/global/resource/image/image.dart';
import 'package:pangolin/widgets/services.dart';

class OverviewOverlay extends ShellOverlay {
  static const String overlayId = "overview";

  OverviewOverlay({super.key}) : super(id: overlayId);

  @override
  _OverviewOverlayState createState() => _OverviewOverlayState();
}

class _OverviewOverlayState extends State<OverviewOverlay>
    with
        ShellOverlayState,
        StateServiceListener<CustomizationService, OverviewOverlay> {
  @override
  FutureOr<void> requestShow(Map<String, dynamic> args) {
    controller.showing = true;
  }

  @override
  FutureOr<void> requestDismiss(Map<String, dynamic> args) {
    controller.showing = false;
  }

  @override
  Widget buildChild(BuildContext context, CustomizationService service) {
    final WindowHierarchyController hierarchy = WindowHierarchy.of(context);
    final ImageResource image = service.wallpaper;

    if (!controller.showing) return const SizedBox();

    return Positioned.fromRect(
      rect: hierarchy.wmBounds,
      child: GestureDetector(
        onTap: () {
          Shell.of(context, listen: false).dismissEverything();
          setState(() {});
        },
        child: BoxSurface(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: 152,
                child: BoxContainer(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Material(
                          color: Colors.transparent,
                          clipBehavior: Clip.antiAlias,
                          shape: Constants.smallShape.copyWith(
                            side: BorderSide(
                              color: context.theme.surfaceForegroundColor,
                              width: 2,
                            ),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: ResourceImage(
                              resource: image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: FloatingActionButton.extended(
                          highlightElevation: 2,
                          onPressed: () {},
                          hoverColor: Theme.of(context).backgroundColor,
                          label: Text(strings.overviewOverlay.newDesktop),
                          icon: const Icon(Icons.add),
                          hoverElevation: 1,
                          foregroundColor:
                              Theme.of(context).textTheme.bodyText1?.color,
                          backgroundColor: Theme.of(context)
                              .backgroundColor
                              .withOpacity(0.5),
                          elevation: 0.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
