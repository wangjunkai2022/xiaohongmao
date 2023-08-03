package kotlin.reflect.jvm.internal.impl.descriptors;

import m8.h;

/* loaded from: classes4.dex */
public interface SourceFile {
    public static final SourceFile NO_SOURCE_FILE = new SourceFile() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.SourceFile.1
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.SourceFile
        @h
        public String getName() {
            return null;
        }
    };

    @h
    String getName();
}
