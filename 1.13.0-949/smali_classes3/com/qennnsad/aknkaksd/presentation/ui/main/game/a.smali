.class public final Lcom/qennnsad/aknkaksd/presentation/ui/main/game/a;
.super Lcom/qennnsad/aknkaksd/presentation/ui/base/b;
.source "CasinoTrampolineFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/main/game/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCasinoTrampolineFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CasinoTrampolineFragment.kt\ncom/qennnsad/aknkaksd/presentation/ui/main/game/CasinoTrampolineFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,22:1\n254#2,2:23\n*S KotlinDebug\n*F\n+ 1 CasinoTrampolineFragment.kt\ncom/qennnsad/aknkaksd/presentation/ui/main/game/CasinoTrampolineFragment\n*L\n18#1:23,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \n2\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0014J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/game/a;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/b;",
        "",
        "a0",
        "Landroid/view/View;",
        "view",
        "",
        "d0",
        "<init>",
        "()V",
        "v",
        "a",
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
.field public static final v:Lcom/qennnsad/aknkaksd/presentation/ui/main/game/a$a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final w:J = 0x1f4L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/game/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/game/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/game/a;->v:Lcom/qennnsad/aknkaksd/presentation/ui/main/game/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a0()I
    .locals 1

    const v0, 0x7f0d00b2

    return v0
.end method

.method protected d0(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const v0, 0x7f0a06b9

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById<View>(R.id.toolbar_refresh)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
