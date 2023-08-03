.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/c;
.super Ljava/lang/Object;
.source "AudienceAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u001d\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00008\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0002\u0010\u0003\u001a\u0004\u0008\u0002\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;",
        "a",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "diffCallback",
        "app_pron_playerRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field private static final a:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/c$a;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/c$a;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/c;->a:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    return-void
.end method

.method public static final a()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/c;->a:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    return-object v0
.end method
