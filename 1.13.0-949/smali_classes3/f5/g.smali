.class public final Lf5/g;
.super Ljava/lang/Object;
.source "SdkModule.kt"


# annotations
.annotation runtime Ld6/h;
.end annotation

.annotation build Ldagger/hilt/e;
    value = {
        Lp6/a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0007J\u0008\u0010\u0005\u001a\u00020\u0004H\u0007J\u0008\u0010\u0007\u001a\u00020\u0006H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lf5/g;",
        "",
        "Lcom/im/freechat/sdk/d;",
        "c",
        "Lcom/im/freechat/sdk/a;",
        "a",
        "Lcom/google/gson/Gson;",
        "b",
        "<init>",
        "()V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/im/freechat/sdk/a;
    .locals 1
    .annotation runtime Ld6/i;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .annotation runtime Lu7/f;
    .end annotation

    invoke-static {}, Lcom/im/freechat/sdk/SDKManager;->d()Lcom/im/freechat/sdk/a;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/gson/Gson;
    .locals 1
    .annotation runtime Ld6/i;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .annotation runtime Lu7/f;
    .end annotation

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/im/freechat/sdk/d;
    .locals 1
    .annotation runtime Ld6/i;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .annotation runtime Lu7/f;
    .end annotation

    sget-object v0, Lcom/im/freechat/sdk/SDKManager;->a:Lcom/im/freechat/sdk/SDKManager;

    invoke-virtual {v0}, Lcom/im/freechat/sdk/SDKManager;->p()Lcom/im/freechat/sdk/d;

    move-result-object v0

    return-object v0
.end method
