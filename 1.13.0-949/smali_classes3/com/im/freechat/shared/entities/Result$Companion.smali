.class public final Lcom/im/freechat/shared/entities/Result$Companion;
.super Ljava/lang/Object;
.source "Result.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/shared/entities/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u001f\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0006\u0010\t\u001a\u0002H\u0005\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/Result$Companion;",
        "",
        "()V",
        "failure",
        "Lcom/im/freechat/shared/entities/Result;",
        "T",
        "exception",
        "",
        "success",
        "value",
        "(Ljava/lang/Object;)Lcom/im/freechat/shared/entities/Result;",
        "shared"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/shared/entities/Result$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final failure(Ljava/lang/Throwable;)Lcom/im/freechat/shared/entities/Result;
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/im/freechat/shared/entities/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/shared/entities/Result;

    new-instance v1, Lcom/im/freechat/shared/entities/Result$Failure;

    invoke-direct {v1, p1}, Lcom/im/freechat/shared/entities/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lcom/im/freechat/shared/entities/Result;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final success(Ljava/lang/Object;)Lcom/im/freechat/shared/entities/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/im/freechat/shared/entities/Result<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/shared/entities/Result;

    invoke-direct {v0, p1}, Lcom/im/freechat/shared/entities/Result;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
