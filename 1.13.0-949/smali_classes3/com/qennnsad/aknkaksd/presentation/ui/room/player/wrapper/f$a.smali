.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f$a;
.super Lkotlin/jvm/internal/Lambda;
.source "KsyPlayerWrapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;-><init>(Landroid/view/ViewGroup;ILcom/ksyun/media/player/KSYMediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/ref/WeakReference<",
        "Lcom/ksyun/media/player/KSYTextureView;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Ljava/lang/ref/WeakReference;",
        "Lcom/ksyun/media/player/KSYTextureView;",
        "a",
        "()Ljava/lang/ref/WeakReference;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:I

.field final synthetic c:Lcom/ksyun/media/player/KSYMediaPlayer;

.field final synthetic d:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;ILcom/ksyun/media/player/KSYMediaPlayer;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f$a;->a:Landroid/view/ViewGroup;

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f$a;->b:I

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f$a;->c:Lcom/ksyun/media/player/KSYMediaPlayer;

    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f$a;->d:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/ref/WeakReference;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ksyun/media/player/KSYTextureView;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f$a;->a:Landroid/view/ViewGroup;

    .line 2
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f$a;->b:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ksyun/media/player/KSYTextureView;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f$a;->c:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f$a;->d:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYTextureView;->getMediaPlayer()Lcom/ksyun/media/player/KSYMediaPlayer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->addMasterClock(Lcom/ksyun/media/player/KSYMediaPlayer;)V

    .line 6
    :cond_0
    invoke-static {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;->q(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;Lcom/ksyun/media/player/KSYTextureView;)V

    .line 7
    invoke-static {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;->p(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KSYTextureView inflated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f$a;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method
