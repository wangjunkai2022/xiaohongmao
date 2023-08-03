.class public final Lcom/im/freechat/data/sources/moshi/DefaultOnDataMismatchAdapter$Companion$newFactory$1;
.super Ljava/lang/Object;
.source "DefaultOnDataMismatchAdapter.kt"

# interfaces
.implements Lcom/squareup/moshi/h$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/moshi/DefaultOnDataMismatchAdapter$Companion;->newFactory(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/squareup/moshi/h$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J.\u0010\n\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\t2\u0006\u0010\u0003\u001a\u00020\u00022\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/im/freechat/data/sources/moshi/DefaultOnDataMismatchAdapter$Companion$newFactory$1",
        "Lcom/squareup/moshi/h$e;",
        "Ljava/lang/reflect/Type;",
        "requestedType",
        "",
        "",
        "annotations",
        "Lcom/squareup/moshi/u;",
        "moshi",
        "Lcom/squareup/moshi/h;",
        "create",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic $type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/sources/moshi/DefaultOnDataMismatchAdapter$Companion$newFactory$1;->$type:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lcom/im/freechat/data/sources/moshi/DefaultOnDataMismatchAdapter$Companion$newFactory$1;->$defaultValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/u;)Lcom/squareup/moshi/h;
    .locals 1
    .param p1    # Ljava/lang/reflect/Type;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/squareup/moshi/u;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/squareup/moshi/u;",
            ")",
            "Lcom/squareup/moshi/h<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "requestedType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moshi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/sources/moshi/DefaultOnDataMismatchAdapter$Companion$newFactory$1;->$type:Ljava/lang/reflect/Type;

    invoke-static {v0, p1}, Lcom/squareup/moshi/z;->e(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/im/freechat/data/sources/moshi/DefaultOnDataMismatchAdapter$Companion$newFactory$1;->$type:Ljava/lang/reflect/Type;

    invoke-virtual {p3, p0, p1, p2}, Lcom/squareup/moshi/u;->m(Lcom/squareup/moshi/h$e;Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/h;

    move-result-object p1

    const-string p2, "moshi.nextAdapter(this, type, annotations)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Lcom/im/freechat/data/sources/moshi/DefaultOnDataMismatchAdapter;

    iget-object p3, p0, Lcom/im/freechat/data/sources/moshi/DefaultOnDataMismatchAdapter$Companion$newFactory$1;->$defaultValue:Ljava/lang/Object;

    invoke-direct {p2, p1, p3}, Lcom/im/freechat/data/sources/moshi/DefaultOnDataMismatchAdapter;-><init>(Lcom/squareup/moshi/h;Ljava/lang/Object;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
