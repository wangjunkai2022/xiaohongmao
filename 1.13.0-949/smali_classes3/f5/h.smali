.class public final Lf5/h;
.super Ljava/lang/Object;
.source "SdkModule_ProvideDataManagerFactory.java"

# interfaces
.implements Ldagger/internal/h;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation build Ldagger/internal/s;
    value = "javax.inject.Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "Lcom/im/freechat/sdk/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lf5/g;


# direct methods
.method public constructor <init>(Lf5/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf5/h;->a:Lf5/g;

    return-void
.end method

.method public static a(Lf5/g;)Lf5/h;
    .locals 1

    new-instance v0, Lf5/h;

    invoke-direct {v0, p0}, Lf5/h;-><init>(Lf5/g;)V

    return-object v0
.end method

.method public static c(Lf5/g;)Lcom/im/freechat/sdk/a;
    .locals 0

    invoke-virtual {p0}, Lf5/g;->a()Lcom/im/freechat/sdk/a;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/p;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/sdk/a;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/im/freechat/sdk/a;
    .locals 1

    iget-object v0, p0, Lf5/h;->a:Lf5/g;

    invoke-static {v0}, Lf5/h;->c(Lf5/g;)Lcom/im/freechat/sdk/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lf5/h;->b()Lcom/im/freechat/sdk/a;

    move-result-object v0

    return-object v0
.end method
