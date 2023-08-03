package kotlin.reflect.full;

import kotlin.Metadata;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KDeclarationContainer;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KClasses.kt */
@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public /* synthetic */ class KClasses$isSubclassOf$1 extends PropertyReference1 {
    public static final KClasses$isSubclassOf$1 INSTANCE = new KClasses$isSubclassOf$1();

    /* synthetic */ KClasses$isSubclassOf$1() {
    }

    @Override // kotlin.reflect.KProperty1
    @h
    public Object get(@h Object obj) {
        return KClasses.getSuperclasses((KClass) obj);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    @g
    public String getName() {
        return "superclasses";
    }

    @Override // kotlin.jvm.internal.CallableReference
    @g
    public KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinPackage(KClasses.class, "kotlin-reflection");
    }

    @Override // kotlin.jvm.internal.CallableReference
    @g
    public String getSignature() {
        return "getSuperclasses(Lkotlin/reflect/KClass;)Ljava/util/List;";
    }
}
