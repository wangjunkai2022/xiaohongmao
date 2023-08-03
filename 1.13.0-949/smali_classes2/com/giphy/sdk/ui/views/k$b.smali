.class public final Lcom/giphy/sdk/ui/views/k$b;
.super Landroid/database/ContentObserver;
.source "GPHVideoPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/k;->q0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/giphy/sdk/ui/views/k$b",
        "Landroid/database/ContentObserver;",
        "",
        "selfChange",
        "",
        "onChange",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/ui/views/k$a;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/views/k$a;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/giphy/sdk/ui/views/k$b;->a:Lcom/giphy/sdk/ui/views/k$a;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/k$b;->a:Lcom/giphy/sdk/ui/views/k$a;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/k$a;->invoke()V

    return-void
.end method
