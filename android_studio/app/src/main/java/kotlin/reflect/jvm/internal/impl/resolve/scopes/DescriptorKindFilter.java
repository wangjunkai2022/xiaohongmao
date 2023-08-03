package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: MemberScope.kt */
/* loaded from: classes4.dex */
public final class DescriptorKindFilter {
    @JvmField
    @g
    public static final DescriptorKindFilter ALL;
    private static final int ALL_KINDS_MASK;
    @JvmField
    @g
    public static final DescriptorKindFilter CALLABLES;
    private static final int CALLABLES_MASK;
    @JvmField
    @g
    public static final DescriptorKindFilter CLASSIFIERS;
    private static final int CLASSIFIERS_MASK;
    @g
    public static final Companion Companion;
    @g
    private static final List<Companion.MaskToName> DEBUG_MASK_BIT_NAMES;
    @g
    private static final List<Companion.MaskToName> DEBUG_PREDEFINED_FILTERS_MASK_NAMES;
    @JvmField
    @g
    public static final DescriptorKindFilter FUNCTIONS;
    private static final int FUNCTIONS_MASK;
    @JvmField
    @g
    public static final DescriptorKindFilter NON_SINGLETON_CLASSIFIERS;
    private static final int NON_SINGLETON_CLASSIFIERS_MASK;
    @JvmField
    @g
    public static final DescriptorKindFilter PACKAGES;
    private static final int PACKAGES_MASK;
    @JvmField
    @g
    public static final DescriptorKindFilter SINGLETON_CLASSIFIERS;
    private static final int SINGLETON_CLASSIFIERS_MASK;
    @JvmField
    @g
    public static final DescriptorKindFilter TYPE_ALIASES;
    private static final int TYPE_ALIASES_MASK;
    @JvmField
    @g
    public static final DescriptorKindFilter VALUES;
    private static final int VALUES_MASK;
    @JvmField
    @g
    public static final DescriptorKindFilter VARIABLES;
    private static final int VARIABLES_MASK;
    private static int nextMaskValue;
    @g
    private final List<DescriptorKindExclude> excludes;
    private final int kindMask;

    /* compiled from: MemberScope.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {

        /* compiled from: MemberScope.kt */
        /* loaded from: classes4.dex */
        private static final class MaskToName {
            private final int mask;
            @g
            private final String name;

            public MaskToName(int i4, @g String name) {
                Intrinsics.checkNotNullParameter(name, "name");
                this.mask = i4;
                this.name = name;
            }

            public final int getMask() {
                return this.mask;
            }

            @g
            public final String getName() {
                return this.name;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int nextMask() {
            int i4 = DescriptorKindFilter.nextMaskValue;
            Companion companion = DescriptorKindFilter.Companion;
            DescriptorKindFilter.nextMaskValue <<= 1;
            return i4;
        }

        public final int getALL_KINDS_MASK() {
            return DescriptorKindFilter.ALL_KINDS_MASK;
        }

        public final int getCLASSIFIERS_MASK() {
            return DescriptorKindFilter.CLASSIFIERS_MASK;
        }

        public final int getFUNCTIONS_MASK() {
            return DescriptorKindFilter.FUNCTIONS_MASK;
        }

        public final int getNON_SINGLETON_CLASSIFIERS_MASK() {
            return DescriptorKindFilter.NON_SINGLETON_CLASSIFIERS_MASK;
        }

        public final int getPACKAGES_MASK() {
            return DescriptorKindFilter.PACKAGES_MASK;
        }

        public final int getSINGLETON_CLASSIFIERS_MASK() {
            return DescriptorKindFilter.SINGLETON_CLASSIFIERS_MASK;
        }

        public final int getTYPE_ALIASES_MASK() {
            return DescriptorKindFilter.TYPE_ALIASES_MASK;
        }

        public final int getVARIABLES_MASK() {
            return DescriptorKindFilter.VARIABLES_MASK;
        }
    }

    static {
        Companion.MaskToName maskToName;
        Companion.MaskToName maskToName2;
        Companion companion = new Companion(null);
        Companion = companion;
        nextMaskValue = 1;
        int nextMask = companion.nextMask();
        NON_SINGLETON_CLASSIFIERS_MASK = nextMask;
        int nextMask2 = companion.nextMask();
        SINGLETON_CLASSIFIERS_MASK = nextMask2;
        int nextMask3 = companion.nextMask();
        TYPE_ALIASES_MASK = nextMask3;
        int nextMask4 = companion.nextMask();
        PACKAGES_MASK = nextMask4;
        int nextMask5 = companion.nextMask();
        FUNCTIONS_MASK = nextMask5;
        int nextMask6 = companion.nextMask();
        VARIABLES_MASK = nextMask6;
        int nextMask7 = companion.nextMask() - 1;
        ALL_KINDS_MASK = nextMask7;
        int i4 = nextMask | nextMask2 | nextMask3;
        CLASSIFIERS_MASK = i4;
        int i10 = nextMask2 | nextMask5 | nextMask6;
        VALUES_MASK = i10;
        int i11 = nextMask5 | nextMask6;
        CALLABLES_MASK = i11;
        ALL = new DescriptorKindFilter(nextMask7, null, 2, null);
        CALLABLES = new DescriptorKindFilter(i11, null, 2, null);
        NON_SINGLETON_CLASSIFIERS = new DescriptorKindFilter(nextMask, null, 2, null);
        SINGLETON_CLASSIFIERS = new DescriptorKindFilter(nextMask2, null, 2, null);
        TYPE_ALIASES = new DescriptorKindFilter(nextMask3, null, 2, null);
        CLASSIFIERS = new DescriptorKindFilter(i4, null, 2, null);
        PACKAGES = new DescriptorKindFilter(nextMask4, null, 2, null);
        FUNCTIONS = new DescriptorKindFilter(nextMask5, null, 2, null);
        VARIABLES = new DescriptorKindFilter(nextMask6, null, 2, null);
        VALUES = new DescriptorKindFilter(i10, null, 2, null);
        Field[] fields = DescriptorKindFilter.class.getFields();
        Intrinsics.checkNotNullExpressionValue(fields, "T::class.java.fields");
        ArrayList<Field> arrayList = new ArrayList();
        for (Field field : fields) {
            if (Modifier.isStatic(field.getModifiers())) {
                arrayList.add(field);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Field field2 : arrayList) {
            Object obj = field2.get(null);
            DescriptorKindFilter descriptorKindFilter = obj instanceof DescriptorKindFilter ? (DescriptorKindFilter) obj : null;
            if (descriptorKindFilter != null) {
                int i12 = descriptorKindFilter.kindMask;
                String name = field2.getName();
                Intrinsics.checkNotNullExpressionValue(name, "field.name");
                maskToName2 = new Companion.MaskToName(i12, name);
            } else {
                maskToName2 = null;
            }
            if (maskToName2 != null) {
                arrayList2.add(maskToName2);
            }
        }
        DEBUG_PREDEFINED_FILTERS_MASK_NAMES = arrayList2;
        Field[] fields2 = DescriptorKindFilter.class.getFields();
        Intrinsics.checkNotNullExpressionValue(fields2, "T::class.java.fields");
        ArrayList arrayList3 = new ArrayList();
        for (Field field3 : fields2) {
            if (Modifier.isStatic(field3.getModifiers())) {
                arrayList3.add(field3);
            }
        }
        ArrayList<Field> arrayList4 = new ArrayList();
        for (Object obj2 : arrayList3) {
            if (Intrinsics.areEqual(((Field) obj2).getType(), Integer.TYPE)) {
                arrayList4.add(obj2);
            }
        }
        ArrayList arrayList5 = new ArrayList();
        for (Field field4 : arrayList4) {
            Object obj3 = field4.get(null);
            Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Int");
            int intValue = ((Integer) obj3).intValue();
            if (intValue == ((-intValue) & intValue)) {
                String name2 = field4.getName();
                Intrinsics.checkNotNullExpressionValue(name2, "field.name");
                maskToName = new Companion.MaskToName(intValue, name2);
            } else {
                maskToName = null;
            }
            if (maskToName != null) {
                arrayList5.add(maskToName);
            }
        }
        DEBUG_MASK_BIT_NAMES = arrayList5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DescriptorKindFilter(int i4, @g List<? extends DescriptorKindExclude> excludes) {
        Intrinsics.checkNotNullParameter(excludes, "excludes");
        this.excludes = excludes;
        for (DescriptorKindExclude descriptorKindExclude : excludes) {
            i4 &= ~descriptorKindExclude.getFullyExcludedDescriptorKinds();
        }
        this.kindMask = i4;
    }

    public final boolean acceptsKinds(int i4) {
        return (i4 & this.kindMask) != 0;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (Intrinsics.areEqual(DescriptorKindFilter.class, obj != null ? obj.getClass() : null)) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.DescriptorKindFilter");
            DescriptorKindFilter descriptorKindFilter = (DescriptorKindFilter) obj;
            return Intrinsics.areEqual(this.excludes, descriptorKindFilter.excludes) && this.kindMask == descriptorKindFilter.kindMask;
        }
        return false;
    }

    @g
    public final List<DescriptorKindExclude> getExcludes() {
        return this.excludes;
    }

    public final int getKindMask() {
        return this.kindMask;
    }

    public int hashCode() {
        return (this.excludes.hashCode() * 31) + this.kindMask;
    }

    @h
    public final DescriptorKindFilter restrictedToKindsOrNull(int i4) {
        int i10 = i4 & this.kindMask;
        if (i10 == 0) {
            return null;
        }
        return new DescriptorKindFilter(i10, this.excludes);
    }

    @g
    public String toString() {
        Object obj;
        boolean z9;
        Iterator<T> it = DEBUG_PREDEFINED_FILTERS_MASK_NAMES.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((Companion.MaskToName) obj).getMask() == this.kindMask) {
                z9 = true;
                continue;
            } else {
                z9 = false;
                continue;
            }
            if (z9) {
                break;
            }
        }
        Companion.MaskToName maskToName = (Companion.MaskToName) obj;
        String name = maskToName != null ? maskToName.getName() : null;
        if (name == null) {
            List<Companion.MaskToName> list = DEBUG_MASK_BIT_NAMES;
            ArrayList arrayList = new ArrayList();
            for (Companion.MaskToName maskToName2 : list) {
                String name2 = acceptsKinds(maskToName2.getMask()) ? maskToName2.getName() : null;
                if (name2 != null) {
                    arrayList.add(name2);
                }
            }
            name = CollectionsKt___CollectionsKt.joinToString$default(arrayList, " | ", null, null, 0, null, null, 62, null);
        }
        return "DescriptorKindFilter(" + name + ", " + this.excludes + ')';
    }

    public /* synthetic */ DescriptorKindFilter(int i4, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, (i10 & 2) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }
}
