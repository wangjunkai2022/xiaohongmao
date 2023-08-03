.class Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$c;
.super Ljava/lang/Object;
.source "LocalAnimPlayerView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$c;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    const-string p1, "onAnimationEnd"

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    const-string p1, "onAnimationRepeat"

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    const-string p1, "onAnimationStart"

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$c;->a(Ljava/lang/String;)V

    return-void
.end method
