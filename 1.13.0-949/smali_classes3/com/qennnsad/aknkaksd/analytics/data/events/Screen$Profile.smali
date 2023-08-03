.class public final Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile;
.super Lcom/qennnsad/aknkaksd/analytics/data/events/Screen;
.source "Ids.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/analytics/data/events/Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Profile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0005B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile;",
        "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen;",
        "()V",
        "id",
        "",
        "Action",
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


# static fields
.field public static final INSTANCE:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final id:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile;->INSTANCE:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile;

    invoke-super {v0}, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen;->get_id()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile;->id:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "profile_page"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
