package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaField;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMember;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaRecordComponent;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import m8.g;
import m8.h;

/* compiled from: DeclaredMemberIndex.kt */
/* loaded from: classes4.dex */
public class ClassDeclaredMemberIndex implements DeclaredMemberIndex {
    @g
    private final Map<Name, JavaRecordComponent> components;
    @g
    private final Map<Name, JavaField> fields;
    @g
    private final JavaClass jClass;
    @g
    private final Function1<JavaMember, Boolean> memberFilter;
    @g
    private final Function1<JavaMethod, Boolean> methodFilter;
    @g
    private final Map<Name, List<JavaMethod>> methods;

    /* JADX WARN: Multi-variable type inference failed */
    public ClassDeclaredMemberIndex(@g JavaClass jClass, @g Function1<? super JavaMember, Boolean> memberFilter) {
        Sequence asSequence;
        Sequence filter;
        Sequence asSequence2;
        Sequence filter2;
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Intrinsics.checkNotNullParameter(jClass, "jClass");
        Intrinsics.checkNotNullParameter(memberFilter, "memberFilter");
        this.jClass = jClass;
        this.memberFilter = memberFilter;
        ClassDeclaredMemberIndex$methodFilter$1 classDeclaredMemberIndex$methodFilter$1 = new ClassDeclaredMemberIndex$methodFilter$1(this);
        this.methodFilter = classDeclaredMemberIndex$methodFilter$1;
        asSequence = CollectionsKt___CollectionsKt.asSequence(jClass.getMethods());
        filter = SequencesKt___SequencesKt.filter(asSequence, classDeclaredMemberIndex$methodFilter$1);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : filter) {
            Name name = ((JavaMethod) obj).getName();
            Object obj2 = linkedHashMap.get(name);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(name, obj2);
            }
            ((List) obj2).add(obj);
        }
        this.methods = linkedHashMap;
        asSequence2 = CollectionsKt___CollectionsKt.asSequence(this.jClass.getFields());
        filter2 = SequencesKt___SequencesKt.filter(asSequence2, this.memberFilter);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Object obj3 : filter2) {
            linkedHashMap2.put(((JavaField) obj3).getName(), obj3);
        }
        this.fields = linkedHashMap2;
        Collection<JavaRecordComponent> recordComponents = this.jClass.getRecordComponents();
        Function1<JavaMember, Boolean> function1 = this.memberFilter;
        ArrayList arrayList = new ArrayList();
        for (Object obj4 : recordComponents) {
            if (((Boolean) function1.invoke(obj4)).booleanValue()) {
                arrayList.add(obj4);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(coerceAtLeast);
        for (Object obj5 : arrayList) {
            linkedHashMap3.put(((JavaRecordComponent) obj5).getName(), obj5);
        }
        this.components = linkedHashMap3;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
    @h
    public JavaField findFieldByName(@g Name name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return this.fields.get(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
    @g
    public Collection<JavaMethod> findMethodsByName(@g Name name) {
        List emptyList;
        Intrinsics.checkNotNullParameter(name, "name");
        List<JavaMethod> list = this.methods.get(name);
        if (list != null) {
            return list;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
    @h
    public JavaRecordComponent findRecordComponentByName(@g Name name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return this.components.get(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
    @g
    public Set<Name> getFieldNames() {
        Sequence asSequence;
        Sequence<JavaField> filter;
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.jClass.getFields());
        filter = SequencesKt___SequencesKt.filter(asSequence, this.memberFilter);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (JavaField javaField : filter) {
            linkedHashSet.add(javaField.getName());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
    @g
    public Set<Name> getMethodNames() {
        Sequence asSequence;
        Sequence<JavaMethod> filter;
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.jClass.getMethods());
        filter = SequencesKt___SequencesKt.filter(asSequence, this.methodFilter);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (JavaMethod javaMethod : filter) {
            linkedHashSet.add(javaMethod.getName());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
    @g
    public Set<Name> getRecordComponentNames() {
        return this.components.keySet();
    }
}
