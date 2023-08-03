.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/f;
.super Ljava/lang/Object;
.source "RoomFinishedFlavorController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;",
        "",
        "a",
        "app_pron_playerRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;)V
    .locals 2
    .param p0    # Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Trying to init streamer views in pron flavour"

    invoke-virtual {p0, v1, v0}, Ltimber/log/Timber$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
