#!/usr/bin/env ruby
require 'securerandom'

def uuid; SecureRandom.uuid.gsub('-', '').upcase[0..23]; end

# File references
app_uuid = uuid
app_file_uuid = uuid
app_delegate_uuid = uuid
dynamic_island_window_uuid = uuid
content_view_uuid = uuid
assets_uuid = uuid
entitlements_uuid = uuid
design_constants_uuid = uuid
animation_constants_uuid = uuid
notch_shape_uuid = uuid
island_view_model_uuid = uuid
island_state_uuid = uuid
cube_type_uuid = uuid
collapsed_view_uuid = uuid
island_view_uuid = uuid

# Groups
app_group_uuid = uuid
views_group_uuid = uuid
models_group_uuid = uuid
viewmodels_group_uuid = uuid
services_group_uuid = uuid
windows_group_uuid = uuid
utilities_group_uuid = uuid
resources_group_uuid = uuid
products_group_uuid = uuid
main_group_uuid = uuid

# Build phases and targets
target_uuid = uuid
project_uuid = uuid
sources_phase_uuid = uuid
resources_phase_uuid = uuid
frameworks_phase_uuid = uuid
build_config_list_target_uuid = uuid
build_config_list_project_uuid = uuid
debug_config_project_uuid = uuid
release_config_project_uuid = uuid
debug_config_target_uuid = uuid
release_config_target_uuid = uuid

pbxproj = <<-PBXPROJ
// !$*UTF8*$!
{
	archiveVersion = 1;
	classes = {
	};
	objectVersion = 56;
	objects = {

/* Begin PBXBuildFile section */
		#{app_file_uuid}000001 /* DynamicIslandManagerApp.swift in Sources */ = {isa = PBXBuildFile; fileRef = #{app_file_uuid} /* DynamicIslandManagerApp.swift */; };
		#{app_delegate_uuid}000001 /* AppDelegate.swift in Sources */ = {isa = PBXBuildFile; fileRef = #{app_delegate_uuid} /* AppDelegate.swift */; };
		#{dynamic_island_window_uuid}000001 /* DynamicIslandWindow.swift in Sources */ = {isa = PBXBuildFile; fileRef = #{dynamic_island_window_uuid} /* DynamicIslandWindow.swift */; };
		#{content_view_uuid}000001 /* ContentView.swift in Sources */ = {isa = PBXBuildFile; fileRef = #{content_view_uuid} /* ContentView.swift */; };
		#{design_constants_uuid}000001 /* DesignConstants.swift in Sources */ = {isa = PBXBuildFile; fileRef = #{design_constants_uuid} /* DesignConstants.swift */; };
		#{animation_constants_uuid}000001 /* AnimationConstants.swift in Sources */ = {isa = PBXBuildFile; fileRef = #{animation_constants_uuid} /* AnimationConstants.swift */; };
		#{notch_shape_uuid}000001 /* NotchShape.swift in Sources */ = {isa = PBXBuildFile; fileRef = #{notch_shape_uuid} /* NotchShape.swift */; };
		#{island_view_model_uuid}000001 /* IslandViewModel.swift in Sources */ = {isa = PBXBuildFile; fileRef = #{island_view_model_uuid} /* IslandViewModel.swift */; };
		#{island_state_uuid}000001 /* IslandState.swift in Sources */ = {isa = PBXBuildFile; fileRef = #{island_state_uuid} /* IslandState.swift */; };
		#{cube_type_uuid}000001 /* CubeType.swift in Sources */ = {isa = PBXBuildFile; fileRef = #{cube_type_uuid} /* CubeType.swift */; };
		#{collapsed_view_uuid}000001 /* CollapsedView.swift in Sources */ = {isa = PBXBuildFile; fileRef = #{collapsed_view_uuid} /* CollapsedView.swift */; };
		#{island_view_uuid}000001 /* IslandView.swift in Sources */ = {isa = PBXBuildFile; fileRef = #{island_view_uuid} /* IslandView.swift */; };
		#{assets_uuid}000001 /* Assets.xcassets in Resources */ = {isa = PBXBuildFile; fileRef = #{assets_uuid} /* Assets.xcassets */; };
/* End PBXBuildFile section */

/* Begin PBXFileReference section */
		#{app_uuid} /* DynamicIslandManager.app */ = {isa = PBXFileReference; explicitFileType = wrapper.application; includeInIndex = 0; path = DynamicIslandManager.app; sourceTree = BUILT_PRODUCTS_DIR; };
		#{app_file_uuid} /* DynamicIslandManagerApp.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = DynamicIslandManagerApp.swift; sourceTree = "<group>"; };
		#{app_delegate_uuid} /* AppDelegate.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = AppDelegate.swift; sourceTree = "<group>"; };
		#{dynamic_island_window_uuid} /* DynamicIslandWindow.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = DynamicIslandWindow.swift; sourceTree = "<group>"; };
		#{content_view_uuid} /* ContentView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ContentView.swift; sourceTree = "<group>"; };
		#{design_constants_uuid} /* DesignConstants.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = DesignConstants.swift; sourceTree = "<group>"; };
		#{animation_constants_uuid} /* AnimationConstants.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = AnimationConstants.swift; sourceTree = "<group>"; };
		#{notch_shape_uuid} /* NotchShape.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = NotchShape.swift; sourceTree = "<group>"; };
		#{island_view_model_uuid} /* IslandViewModel.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = IslandViewModel.swift; sourceTree = "<group>"; };
		#{island_state_uuid} /* IslandState.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = IslandState.swift; sourceTree = "<group>"; };
		#{cube_type_uuid} /* CubeType.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = CubeType.swift; sourceTree = "<group>"; };
		#{collapsed_view_uuid} /* CollapsedView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = CollapsedView.swift; sourceTree = "<group>"; };
		#{island_view_uuid} /* IslandView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = IslandView.swift; sourceTree = "<group>"; };
		#{assets_uuid} /* Assets.xcassets */ = {isa = PBXFileReference; lastKnownFileType = folder.assetcatalog; path = Assets.xcassets; sourceTree = "<group>"; };
		#{entitlements_uuid} /* DynamicIslandManager.entitlements */ = {isa = PBXFileReference; lastKnownFileType = text.plist.entitlements; path = DynamicIslandManager.entitlements; sourceTree = "<group>"; };
/* End PBXFileReference section */

/* Begin PBXFrameworksBuildPhase section */
		#{frameworks_phase_uuid} /* Frameworks */ = {
			isa = PBXFrameworksBuildPhase;
			buildActionMask = 2147483647;
			files = (
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXFrameworksBuildPhase section */

/* Begin PBXGroup section */
		#{main_group_uuid} = {
			isa = PBXGroup;
			children = (
				#{main_group_uuid}000001 /* DynamicIslandManager */,
				#{products_group_uuid} /* Products */,
			);
			sourceTree = "<group>";
		};
		#{main_group_uuid}000001 /* DynamicIslandManager */ = {
			isa = PBXGroup;
			children = (
				#{app_group_uuid} /* App */,
				#{views_group_uuid} /* Views */,
				#{models_group_uuid} /* Models */,
				#{viewmodels_group_uuid} /* ViewModels */,
				#{services_group_uuid} /* Services */,
				#{windows_group_uuid} /* Windows */,
				#{utilities_group_uuid} /* Utilities */,
				#{resources_group_uuid} /* Resources */,
				#{content_view_uuid} /* ContentView.swift */,
				#{entitlements_uuid} /* DynamicIslandManager.entitlements */,
			);
			path = DynamicIslandManager;
			sourceTree = "<group>";
		};
		#{app_group_uuid} /* App */ = {
			isa = PBXGroup;
			children = (
				#{app_file_uuid} /* DynamicIslandManagerApp.swift */,
				#{app_delegate_uuid} /* AppDelegate.swift */,
			);
			path = App;
			sourceTree = "<group>";
		};
		#{views_group_uuid} /* Views */ = {
			isa = PBXGroup;
			children = (
				#{island_view_uuid} /* IslandView.swift */,
				#{collapsed_view_uuid} /* CollapsedView.swift */,
			);
			path = Views;
			sourceTree = "<group>";
		};
		#{models_group_uuid} /* Models */ = {
			isa = PBXGroup;
			children = (
				#{island_state_uuid} /* IslandState.swift */,
				#{cube_type_uuid} /* CubeType.swift */,
			);
			path = Models;
			sourceTree = "<group>";
		};
		#{viewmodels_group_uuid} /* ViewModels */ = {
			isa = PBXGroup;
			children = (
				#{island_view_model_uuid} /* IslandViewModel.swift */,
			);
			path = ViewModels;
			sourceTree = "<group>";
		};
		#{services_group_uuid} /* Services */ = {
			isa = PBXGroup;
			children = (
			);
			path = Services;
			sourceTree = "<group>";
		};
		#{windows_group_uuid} /* Windows */ = {
			isa = PBXGroup;
			children = (
				#{dynamic_island_window_uuid} /* DynamicIslandWindow.swift */,
			);
			path = Windows;
			sourceTree = "<group>";
		};
		#{utilities_group_uuid} /* Utilities */ = {
			isa = PBXGroup;
			children = (
				#{design_constants_uuid} /* DesignConstants.swift */,
				#{animation_constants_uuid} /* AnimationConstants.swift */,
				#{notch_shape_uuid} /* NotchShape.swift */,
			);
			path = Utilities;
			sourceTree = "<group>";
		};
		#{resources_group_uuid} /* Resources */ = {
			isa = PBXGroup;
			children = (
				#{assets_uuid} /* Assets.xcassets */,
			);
			path = Resources;
			sourceTree = "<group>";
		};
		#{products_group_uuid} /* Products */ = {
			isa = PBXGroup;
			children = (
				#{app_uuid} /* DynamicIslandManager.app */,
			);
			name = Products;
			sourceTree = "<group>";
		};
/* End PBXGroup section */

/* Begin PBXNativeTarget section */
		#{target_uuid} /* DynamicIslandManager */ = {
			isa = PBXNativeTarget;
			buildConfigurationList = #{build_config_list_target_uuid} /* Build configuration list for PBXNativeTarget "DynamicIslandManager" */;
			buildPhases = (
				#{sources_phase_uuid} /* Sources */,
				#{frameworks_phase_uuid} /* Frameworks */,
				#{resources_phase_uuid} /* Resources */,
			);
			buildRules = (
			);
			dependencies = (
			);
			name = DynamicIslandManager;
			productName = DynamicIslandManager;
			productReference = #{app_uuid} /* DynamicIslandManager.app */;
			productType = "com.apple.product-type.application";
		};
/* End PBXNativeTarget section */

/* Begin PBXProject section */
		#{project_uuid} /* Project object */ = {
			isa = PBXProject;
			attributes = {
				BuildIndependentTargetsInParallel = 1;
				LastSwiftUpdateCheck = 1600;
				LastUpgradeCheck = 1600;
				TargetAttributes = {
					#{target_uuid} = {
						CreatedOnToolsVersion = 16.0;
					};
				};
			};
			buildConfigurationList = #{build_config_list_project_uuid} /* Build configuration list for PBXProject "DynamicIslandManager" */;
			compatibilityVersion = "Xcode 14.0";
			developmentRegion = en;
			hasScannedForEncodings = 0;
			knownRegions = (
				en,
				Base,
			);
			mainGroup = #{main_group_uuid};
			productRefGroup = #{products_group_uuid} /* Products */;
			projectDirPath = "";
			projectRoot = "";
			targets = (
				#{target_uuid} /* DynamicIslandManager */,
			);
		};
/* End PBXProject section */

/* Begin PBXResourcesBuildPhase section */
		#{resources_phase_uuid} /* Resources */ = {
			isa = PBXResourcesBuildPhase;
			buildActionMask = 2147483647;
			files = (
				#{assets_uuid}000001 /* Assets.xcassets in Resources */,
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXResourcesBuildPhase section */

/* Begin PBXSourcesBuildPhase section */
		#{sources_phase_uuid} /* Sources */ = {
			isa = PBXSourcesBuildPhase;
			buildActionMask = 2147483647;
			files = (
				#{content_view_uuid}000001 /* ContentView.swift in Sources */,
				#{app_delegate_uuid}000001 /* AppDelegate.swift in Sources */,
				#{dynamic_island_window_uuid}000001 /* DynamicIslandWindow.swift in Sources */,
				#{design_constants_uuid}000001 /* DesignConstants.swift in Sources */,
				#{animation_constants_uuid}000001 /* AnimationConstants.swift in Sources */,
				#{notch_shape_uuid}000001 /* NotchShape.swift in Sources */,
				#{island_view_model_uuid}000001 /* IslandViewModel.swift in Sources */,
				#{island_state_uuid}000001 /* IslandState.swift in Sources */,
				#{cube_type_uuid}000001 /* CubeType.swift in Sources */,
				#{collapsed_view_uuid}000001 /* CollapsedView.swift in Sources */,
				#{island_view_uuid}000001 /* IslandView.swift in Sources */,
				#{app_file_uuid}000001 /* DynamicIslandManagerApp.swift in Sources */,
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXSourcesBuildPhase section */

/* Begin XCBuildConfiguration section */
		#{debug_config_project_uuid} /* Debug */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ALWAYS_SEARCH_USER_PATHS = NO;
				ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS = YES;
				CLANG_ANALYZER_NONNULL = YES;
				CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION = YES_AGGRESSIVE;
				CLANG_CXX_LANGUAGE_STANDARD = "gnu++20";
				CLANG_ENABLE_MODULES = YES;
				CLANG_ENABLE_OBJC_ARC = YES;
				CLANG_ENABLE_OBJC_WEAK = YES;
				CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = YES;
				CLANG_WARN_BOOL_CONVERSION = YES;
				CLANG_WARN_COMMA = YES;
				CLANG_WARN_CONSTANT_CONVERSION = YES;
				CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS = YES;
				CLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;
				CLANG_WARN_DOCUMENTATION_COMMENTS = YES;
				CLANG_WARN_EMPTY_BODY = YES;
				CLANG_WARN_ENUM_CONVERSION = YES;
				CLANG_WARN_INFINITE_RECURSION = YES;
				CLANG_WARN_INT_CONVERSION = YES;
				CLANG_WARN_NON_LITERAL_NULL_CONVERSION = YES;
				CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF = YES;
				CLANG_WARN_OBJC_LITERAL_CONVERSION = YES;
				CLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;
				CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER = YES;
				CLANG_WARN_RANGE_LOOP_ANALYSIS = YES;
				CLANG_WARN_STRICT_PROTOTYPES = YES;
				CLANG_WARN_SUSPICIOUS_MOVE = YES;
				CLANG_WARN_UNGUARDED_AVAILABILITY = YES_AGGRESSIVE;
				CLANG_WARN_UNREACHABLE_CODE = YES;
				CLANG_WARN__DUPLICATE_METHOD_MATCH = YES;
				COPY_PHASE_STRIP = NO;
				DEBUG_INFORMATION_FORMAT = dwarf;
				ENABLE_STRICT_OBJC_MSGSEND = YES;
				ENABLE_TESTABILITY = YES;
				ENABLE_USER_SCRIPT_SANDBOXING = YES;
				GCC_C_LANGUAGE_STANDARD = gnu17;
				GCC_DYNAMIC_NO_PIC = NO;
				GCC_NO_COMMON_BLOCKS = YES;
				GCC_OPTIMIZATION_LEVEL = 0;
				GCC_PREPROCESSOR_DEFINITIONS = (
					"DEBUG=1",
					"$(inherited)",
				);
				GCC_WARN_64_TO_32_BIT_CONVERSION = YES;
				GCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;
				GCC_WARN_UNDECLARED_SELECTOR = YES;
				GCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;
				GCC_WARN_UNUSED_FUNCTION = YES;
				GCC_WARN_UNUSED_VARIABLE = YES;
				LOCALIZATION_PREFERS_STRING_CATALOGS = YES;
				MACOSX_DEPLOYMENT_TARGET = 14.0;
				MTL_ENABLE_DEBUG_INFO = INCLUDE_SOURCE;
				MTL_FAST_MATH = YES;
				ONLY_ACTIVE_ARCH = YES;
				SDKROOT = macosx;
				SWIFT_ACTIVE_COMPILATION_CONDITIONS = "DEBUG $(inherited)";
				SWIFT_OPTIMIZATION_LEVEL = "-Onone";
			};
			name = Debug;
		};
		#{release_config_project_uuid} /* Release */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ALWAYS_SEARCH_USER_PATHS = NO;
				ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS = YES;
				CLANG_ANALYZER_NONNULL = YES;
				CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION = YES_AGGRESSIVE;
				CLANG_CXX_LANGUAGE_STANDARD = "gnu++20";
				CLANG_ENABLE_MODULES = YES;
				CLANG_ENABLE_OBJC_ARC = YES;
				CLANG_ENABLE_OBJC_WEAK = YES;
				CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = YES;
				CLANG_WARN_BOOL_CONVERSION = YES;
				CLANG_WARN_COMMA = YES;
				CLANG_WARN_CONSTANT_CONVERSION = YES;
				CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS = YES;
				CLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;
				CLANG_WARN_DOCUMENTATION_COMMENTS = YES;
				CLANG_WARN_EMPTY_BODY = YES;
				CLANG_WARN_ENUM_CONVERSION = YES;
				CLANG_WARN_INFINITE_RECURSION = YES;
				CLANG_WARN_INT_CONVERSION = YES;
				CLANG_WARN_NON_LITERAL_NULL_CONVERSION = YES;
				CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF = YES;
				CLANG_WARN_OBJC_LITERAL_CONVERSION = YES;
				CLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;
				CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER = YES;
				CLANG_WARN_RANGE_LOOP_ANALYSIS = YES;
				CLANG_WARN_STRICT_PROTOTYPES = YES;
				CLANG_WARN_SUSPICIOUS_MOVE = YES;
				CLANG_WARN_UNGUARDED_AVAILABILITY = YES_AGGRESSIVE;
				CLANG_WARN_UNREACHABLE_CODE = YES;
				CLANG_WARN__DUPLICATE_METHOD_MATCH = YES;
				COPY_PHASE_STRIP = NO;
				DEBUG_INFORMATION_FORMAT = "dwarf-with-dsym";
				ENABLE_NS_ASSERTIONS = NO;
				ENABLE_STRICT_OBJC_MSGSEND = YES;
				ENABLE_USER_SCRIPT_SANDBOXING = YES;
				GCC_C_LANGUAGE_STANDARD = gnu17;
				GCC_NO_COMMON_BLOCKS = YES;
				GCC_WARN_64_TO_32_BIT_CONVERSION = YES;
				GCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;
				GCC_WARN_UNDECLARED_SELECTOR = YES;
				GCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;
				GCC_WARN_UNUSED_FUNCTION = YES;
				GCC_WARN_UNUSED_VARIABLE = YES;
				LOCALIZATION_PREFERS_STRING_CATALOGS = YES;
				MACOSX_DEPLOYMENT_TARGET = 14.0;
				MTL_ENABLE_DEBUG_INFO = NO;
				MTL_FAST_MATH = YES;
				SDKROOT = macosx;
				SWIFT_COMPILATION_MODE = wholemodule;
			};
			name = Release;
		};
		#{debug_config_target_uuid} /* Debug */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;
				ASSETCATALOG_COMPILER_GLOBAL_ACCENT_COLOR_NAME = AccentColor;
				CODE_SIGN_ENTITLEMENTS = DynamicIslandManager/DynamicIslandManager.entitlements;
				CODE_SIGN_STYLE = Automatic;
				COMBINE_HIDPI_IMAGES = YES;
				CURRENT_PROJECT_VERSION = 1;
				DEVELOPMENT_ASSET_PATHS = "";
				ENABLE_PREVIEWS = YES;
				GENERATE_INFOPLIST_FILE = YES;
				INFOPLIST_KEY_NSHumanReadableCopyright = "";
				LD_RUNPATH_SEARCH_PATHS = (
					"$(inherited)",
					"@executable_path/../Frameworks",
				);
				MARKETING_VERSION = 1.0;
				PRODUCT_BUNDLE_IDENTIFIER = com.dynamicisland.manager;
				PRODUCT_NAME = "$(TARGET_NAME)";
				SWIFT_EMIT_LOC_STRINGS = YES;
				SWIFT_VERSION = 5.0;
			};
			name = Debug;
		};
		#{release_config_target_uuid} /* Release */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;
				ASSETCATALOG_COMPILER_GLOBAL_ACCENT_COLOR_NAME = AccentColor;
				CODE_SIGN_ENTITLEMENTS = DynamicIslandManager/DynamicIslandManager.entitlements;
				CODE_SIGN_STYLE = Automatic;
				COMBINE_HIDPI_IMAGES = YES;
				CURRENT_PROJECT_VERSION = 1;
				DEVELOPMENT_ASSET_PATHS = "";
				ENABLE_PREVIEWS = YES;
				GENERATE_INFOPLIST_FILE = YES;
				INFOPLIST_KEY_NSHumanReadableCopyright = "";
				LD_RUNPATH_SEARCH_PATHS = (
					"$(inherited)",
					"@executable_path/../Frameworks",
				);
				MARKETING_VERSION = 1.0;
				PRODUCT_BUNDLE_IDENTIFIER = com.dynamicisland.manager;
				PRODUCT_NAME = "$(TARGET_NAME)";
				SWIFT_EMIT_LOC_STRINGS = YES;
				SWIFT_VERSION = 5.0;
			};
			name = Release;
		};
/* End XCBuildConfiguration section */

/* Begin XCConfigurationList section */
		#{build_config_list_project_uuid} /* Build configuration list for PBXProject "DynamicIslandManager" */ = {
			isa = XCConfigurationList;
			buildConfigurations = (
				#{debug_config_project_uuid} /* Debug */,
				#{release_config_project_uuid} /* Release */,
			);
			defaultConfigurationIsVisible = 0;
			defaultConfigurationName = Release;
		};
		#{build_config_list_target_uuid} /* Build configuration list for PBXNativeTarget "DynamicIslandManager" */ = {
			isa = XCConfigurationList;
			buildConfigurations = (
				#{debug_config_target_uuid} /* Debug */,
				#{release_config_target_uuid} /* Release */,
			);
			defaultConfigurationIsVisible = 0;
			defaultConfigurationName = Release;
		};
/* End XCConfigurationList section */
	};
	rootObject = #{project_uuid} /* Project object */;
}
PBXPROJ

File.write("DynamicIslandManager.xcodeproj/project.pbxproj", pbxproj)
puts "Project file created successfully with all files!"
