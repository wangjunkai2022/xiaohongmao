.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/me/d;
.super Lcom/qennnsad/aknkaksd/presentation/module/main/me/g;
.source "MeProfileMenu.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/me/d;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/me/g;",
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


# static fields
.field public static final f:Lcom/qennnsad/aknkaksd/presentation/module/main/me/d;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/d;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/d;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/d;->f:Lcom/qennnsad/aknkaksd/presentation/module/main/me/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    const v0, 0x7f0804c6

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v0, 0x7f1302a2

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v2, 0x7f1302a1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v1, p0

    .line 3
    invoke-direct/range {v1 .. v8}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/g;-><init>(ILjava/lang/Integer;Ljava/lang/String;ZLjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
