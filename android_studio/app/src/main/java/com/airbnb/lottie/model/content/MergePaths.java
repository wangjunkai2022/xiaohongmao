package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class MergePaths implements b {

    /* renamed from: a  reason: collision with root package name */
    private final String f4443a;

    /* renamed from: b  reason: collision with root package name */
    private final MergePathsMode f4444b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f4445c;

    /* loaded from: classes.dex */
    public enum MergePathsMode {
        MERGE,
        ADD,
        SUBTRACT,
        INTERSECT,
        EXCLUDE_INTERSECTIONS;

        public static MergePathsMode forId(int i4) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 != 4) {
                            if (i4 != 5) {
                                return MERGE;
                            }
                            return EXCLUDE_INTERSECTIONS;
                        }
                        return INTERSECT;
                    }
                    return SUBTRACT;
                }
                return ADD;
            }
            return MERGE;
        }
    }

    public MergePaths(String str, MergePathsMode mergePathsMode, boolean z9) {
        this.f4443a = str;
        this.f4444b = mergePathsMode;
        this.f4445c = z9;
    }

    @Override // com.airbnb.lottie.model.content.b
    @Nullable
    public com.airbnb.lottie.animation.content.c a(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        if (!hVar.k()) {
            com.airbnb.lottie.utils.d.d("Animation contains merge paths but they are disabled.");
            return null;
        }
        return new com.airbnb.lottie.animation.content.l(this);
    }

    public MergePathsMode b() {
        return this.f4444b;
    }

    public String c() {
        return this.f4443a;
    }

    public boolean d() {
        return this.f4445c;
    }

    public String toString() {
        return "MergePaths{mode=" + this.f4444b + '}';
    }
}
