.class public abstract Lcom/qennnsad/aknkaksd/analytics/data/events/Screen;
.super Ljava/lang/Object;
.source "Ids.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;,
        Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile;,
        Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$BottomMenu;,
        Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$StreamingRoom;,
        Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$GiftPanel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0005\u0007\u0008\t\n\u000bB\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0004\u000c\r\u000e\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen;",
        "",
        "_id",
        "",
        "(Ljava/lang/String;)V",
        "get_id",
        "()Ljava/lang/String;",
        "Action",
        "BottomMenu",
        "GiftPanel",
        "Profile",
        "StreamingRoom",
        "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$BottomMenu;",
        "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$GiftPanel;",
        "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile;",
        "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$StreamingRoom;",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _id:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen;->_id:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final get_id()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen;->_id:Ljava/lang/String;

    return-object v0
.end method
