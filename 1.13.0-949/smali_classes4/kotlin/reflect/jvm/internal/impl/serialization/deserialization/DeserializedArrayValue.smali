.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedArrayValue;
.super Lkotlin/reflect/jvm/internal/impl/resolve/constants/ArrayValue;
.source "DeserializedArrayValue.kt"


# instance fields
.field private final type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue<",
            "*>;>;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ")V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedArrayValue$1;

    invoke-direct {v0, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedArrayValue$1;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ArrayValue;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedArrayValue;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-void
.end method


# virtual methods
.method public final getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedArrayValue;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object v0
.end method
