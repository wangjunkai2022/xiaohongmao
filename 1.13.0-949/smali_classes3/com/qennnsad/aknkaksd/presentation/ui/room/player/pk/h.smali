.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/h;
.super Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;
.source "PkPlayerManagerKsy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0016\u0008\u0002\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016R\u0014\u0010\u0008\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/h;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;",
        "L0",
        "M0",
        "Landroid/view/ViewGroup;",
        "s",
        "Landroid/view/ViewGroup;",
        "root",
        "t",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;",
        "_vPrim",
        "u",
        "_vSec",
        "Lg5/a;",
        "localDataManager",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "",
        "isWatcher",
        "Lkotlin/Function1;",
        "",
        "",
        "donatorClickListener",
        "<init>",
        "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function1;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final s:Landroid/view/ViewGroup;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private t:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private u:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg5/a;",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            "Landroid/view/ViewGroup;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "root"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function1;)V

    .line 3
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/h;->s:Landroid/view/ViewGroup;

    return-void
.end method

.method public synthetic constructor <init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/h;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic H()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/h;->L0()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/h;->M0()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;

    move-result-object v0

    return-object v0
.end method

.method public L0()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;
    .locals 9
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/h;->t:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;->isDestroyed()Z

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 2
    :cond_1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Creating new KsyPlayerWrapper instanse primary"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/h;->s:Landroid/view/ViewGroup;

    const v5, 0x7f0a077c

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;-><init>(Landroid/view/ViewGroup;ILcom/ksyun/media/player/KSYMediaPlayer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/h;->t:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/h;->t:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;

    return-object v0
.end method

.method public M0()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;
    .locals 4
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/h;->u:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;->isDestroyed()Z

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 2
    :cond_1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Creating new KsyPlayerWrapper instanse secondary"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/h;->s:Landroid/view/ViewGroup;

    const v2, 0x7f0a077d

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/h;->t:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;->r()Lcom/ksyun/media/player/KSYMediaPlayer;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;-><init>(Landroid/view/ViewGroup;ILcom/ksyun/media/player/KSYMediaPlayer;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/h;->u:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/h;->u:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;

    return-object v0
.end method
