.class public final Lcom/qennnsad/aknkaksd/data/bean/GameCenter;
.super Ljava/lang/Object;
.source "GameCenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;,
        Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetPointsBean;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/GameCenter;",
        "",
        "()V",
        "GetPointsBean",
        "GetUrlBean",
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
.field public static final INSTANCE:Lcom/qennnsad/aknkaksd/data/bean/GameCenter;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/GameCenter;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter;->INSTANCE:Lcom/qennnsad/aknkaksd/data/bean/GameCenter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
