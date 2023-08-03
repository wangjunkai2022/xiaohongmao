package kotlin.reflect.jvm.internal.impl.incremental.components;

import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: LookupTracker.kt */
/* loaded from: classes4.dex */
public interface LookupTracker {

    /* compiled from: LookupTracker.kt */
    /* loaded from: classes4.dex */
    public static final class DO_NOTHING implements LookupTracker {
        @g
        public static final DO_NOTHING INSTANCE = new DO_NOTHING();

        private DO_NOTHING() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.incremental.components.LookupTracker
        public boolean getRequiresPosition() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.incremental.components.LookupTracker
        public void record(@g String filePath, @g Position position, @g String scopeFqName, @g ScopeKind scopeKind, @g String name) {
            Intrinsics.checkNotNullParameter(filePath, "filePath");
            Intrinsics.checkNotNullParameter(position, "position");
            Intrinsics.checkNotNullParameter(scopeFqName, "scopeFqName");
            Intrinsics.checkNotNullParameter(scopeKind, "scopeKind");
            Intrinsics.checkNotNullParameter(name, "name");
        }
    }

    boolean getRequiresPosition();

    void record(@g String str, @g Position position, @g String str2, @g ScopeKind scopeKind, @g String str3);
}
