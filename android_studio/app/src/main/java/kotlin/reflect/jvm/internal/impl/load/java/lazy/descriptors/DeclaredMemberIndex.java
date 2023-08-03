package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaField;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaRecordComponent;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;
import m8.h;

/* compiled from: DeclaredMemberIndex.kt */
/* loaded from: classes4.dex */
public interface DeclaredMemberIndex {

    /* compiled from: DeclaredMemberIndex.kt */
    /* loaded from: classes4.dex */
    public static final class Empty implements DeclaredMemberIndex {
        @g
        public static final Empty INSTANCE = new Empty();

        private Empty() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
        @h
        public JavaField findFieldByName(@g Name name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
        @h
        public JavaRecordComponent findRecordComponentByName(@g Name name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
        @g
        public Set<Name> getFieldNames() {
            Set<Name> emptySet;
            emptySet = SetsKt__SetsKt.emptySet();
            return emptySet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
        @g
        public Set<Name> getMethodNames() {
            Set<Name> emptySet;
            emptySet = SetsKt__SetsKt.emptySet();
            return emptySet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
        @g
        public Set<Name> getRecordComponentNames() {
            Set<Name> emptySet;
            emptySet = SetsKt__SetsKt.emptySet();
            return emptySet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
        @g
        public List<JavaMethod> findMethodsByName(@g Name name) {
            List<JavaMethod> emptyList;
            Intrinsics.checkNotNullParameter(name, "name");
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
    }

    @h
    JavaField findFieldByName(@g Name name);

    @g
    Collection<JavaMethod> findMethodsByName(@g Name name);

    @h
    JavaRecordComponent findRecordComponentByName(@g Name name);

    @g
    Set<Name> getFieldNames();

    @g
    Set<Name> getMethodNames();

    @g
    Set<Name> getRecordComponentNames();
}
