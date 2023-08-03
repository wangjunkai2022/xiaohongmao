.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment$a;
.super Ljava/lang/Object;
.source "RoomFinishedFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment$a;",
        "",
        "",
        "watcher",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;",
        "a",
        "",
        "KEY_IS_WATCHER",
        "Ljava/lang/String;",
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
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "key_watcher"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
