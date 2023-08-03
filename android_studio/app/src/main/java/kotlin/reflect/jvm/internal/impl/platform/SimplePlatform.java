package kotlin.reflect.jvm.internal.impl.platform;

import m8.g;

/* compiled from: TargetPlatform.kt */
/* loaded from: classes4.dex */
public abstract class SimplePlatform {
    @g
    private final String platformName;
    @g
    private final TargetPlatformVersion targetPlatformVersion;

    @g
    public String getTargetName() {
        return getTargetPlatformVersion().getDescription();
    }

    @g
    public TargetPlatformVersion getTargetPlatformVersion() {
        return this.targetPlatformVersion;
    }

    @g
    public String toString() {
        String targetName = getTargetName();
        if (targetName.length() > 0) {
            return this.platformName + " (" + targetName + ')';
        }
        return this.platformName;
    }
}
