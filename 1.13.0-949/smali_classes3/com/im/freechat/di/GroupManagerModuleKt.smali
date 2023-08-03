.class public final Lcom/im/freechat/di/GroupManagerModuleKt;
.super Ljava/lang/Object;
.source "GroupManagerModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u0017\u0010\u0001\u001a\u00020\u00008\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0001\u0010\u0002\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lx8/a;",
        "groupManagerModule",
        "Lx8/a;",
        "a",
        "()Lx8/a;",
        "app_prodRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field private static final a:Lx8/a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/im/freechat/di/GroupManagerModuleKt$groupManagerModule$1;->a:Lcom/im/freechat/di/GroupManagerModuleKt$groupManagerModule$1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lb9/c;->c(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lx8/a;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/di/GroupManagerModuleKt;->a:Lx8/a;

    return-void
.end method

.method public static final a()Lx8/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/im/freechat/di/GroupManagerModuleKt;->a:Lx8/a;

    return-object v0
.end method
