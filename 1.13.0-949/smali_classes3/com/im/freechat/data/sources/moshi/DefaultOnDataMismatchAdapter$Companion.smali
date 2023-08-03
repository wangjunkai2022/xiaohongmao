.class public final Lcom/im/freechat/data/sources/moshi/DefaultOnDataMismatchAdapter$Companion;
.super Ljava/lang/Object;
.source "DefaultOnDataMismatchAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/data/sources/moshi/DefaultOnDataMismatchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ#\u0010\u0007\u001a\u00020\u0006\"\u0004\u0008\u0001\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00028\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/moshi/DefaultOnDataMismatchAdapter$Companion;",
        "",
        "T",
        "Ljava/lang/reflect/Type;",
        "type",
        "defaultValue",
        "Lcom/squareup/moshi/h$e;",
        "newFactory",
        "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/squareup/moshi/h$e;",
        "<init>",
        "()V",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/data/sources/moshi/DefaultOnDataMismatchAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newFactory(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/squareup/moshi/h$e;
    .locals 1
    .param p1    # Ljava/lang/reflect/Type;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "TT;)",
            "Lcom/squareup/moshi/h$e;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/data/sources/moshi/DefaultOnDataMismatchAdapter$Companion$newFactory$1;

    invoke-direct {v0, p1, p2}, Lcom/im/freechat/data/sources/moshi/DefaultOnDataMismatchAdapter$Companion$newFactory$1;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    return-object v0
.end method
