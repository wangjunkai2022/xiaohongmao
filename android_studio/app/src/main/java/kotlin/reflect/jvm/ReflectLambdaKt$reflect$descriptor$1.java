package kotlin.reflect.jvm;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: reflectLambda.kt */
@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public /* synthetic */ class ReflectLambdaKt$reflect$descriptor$1 extends FunctionReference implements Function2<MemberDeserializer, ProtoBuf.Function, SimpleFunctionDescriptor> {
    public static final ReflectLambdaKt$reflect$descriptor$1 INSTANCE = new ReflectLambdaKt$reflect$descriptor$1();

    ReflectLambdaKt$reflect$descriptor$1() {
        super(2);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    @g
    public final String getName() {
        return "loadFunction";
    }

    @Override // kotlin.jvm.internal.CallableReference
    @g
    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass(MemberDeserializer.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    @g
    public final String getSignature() {
        return "loadFunction(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Function;)Lorg/jetbrains/kotlin/descriptors/SimpleFunctionDescriptor;";
    }

    @Override // kotlin.jvm.functions.Function2
    @g
    public final SimpleFunctionDescriptor invoke(@g MemberDeserializer p02, @g ProtoBuf.Function p12) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        Intrinsics.checkNotNullParameter(p12, "p1");
        return p02.loadFunction(p12);
    }
}
