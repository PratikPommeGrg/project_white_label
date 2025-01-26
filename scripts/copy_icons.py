import os
import shutil
import sys

def copy_icons(flavor):
    # Define source and target directories
    ios_source = f"../assets/assets_{flavor}/ios_assets/"
    ios_target = "../ios/Runner/Assets.xcassets/AppIcon.appiconset"

    android_source = f"../assets/assets_{flavor}/android_assets/"
    android_target = "../android/app/src/main/res"

    # Copy iOS icons
    if os.path.exists(ios_source):
        if os.path.exists(ios_target):
            shutil.rmtree(ios_target)
        shutil.copytree(ios_source, ios_target)
        print(f"iOS icons copied for flavor: {flavor}")
    else:
        print(f"iOS icons not found for flavor: {flavor}")

    # Copy Android icons
    if os.path.exists(android_source):
        for mipmap_dir in os.listdir(android_source):
            source_dir = os.path.join(android_source, mipmap_dir)
            target_dir = os.path.join(android_target, mipmap_dir)

            # Skip non-directory files (e.g., .DS_Store)
            if not os.path.isdir(source_dir):
                print(f"Skipping non-directory: {source_dir}")
                continue

            if os.path.exists(target_dir):
                shutil.rmtree(target_dir)
            shutil.copytree(source_dir, target_dir)
            print(f"Copied Android directory: {mipmap_dir}")
        print(f"Android icons copied for flavor: {flavor}")
    else:
        print(f"Android icons not found for flavor: {flavor}")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python copy_icons.py <flavor>")
        sys.exit(1)

    flavor = sys.argv[1]
    copy_icons(flavor)