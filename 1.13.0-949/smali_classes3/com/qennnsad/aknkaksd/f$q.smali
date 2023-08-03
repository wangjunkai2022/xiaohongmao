.class final Lcom/qennnsad/aknkaksd/f$q;
.super Lcom/qennnsad/aknkaksd/d$n;
.source "DaggerBeautyLiveApplication_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "q"
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/f$k;

.field private final b:Lcom/qennnsad/aknkaksd/f$e;

.field private final c:Lcom/qennnsad/aknkaksd/f$c;

.field private final d:Lcom/qennnsad/aknkaksd/f$h;

.field private final e:Lcom/qennnsad/aknkaksd/f$q;


# direct methods
.method private constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Lcom/qennnsad/aknkaksd/f$h;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl",
            "fragmentCImpl",
            "viewParam"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/d$n;-><init>()V

    .line 3
    iput-object p0, p0, Lcom/qennnsad/aknkaksd/f$q;->e:Lcom/qennnsad/aknkaksd/f$q;

    .line 4
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$q;->a:Lcom/qennnsad/aknkaksd/f$k;

    .line 5
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/f$q;->b:Lcom/qennnsad/aknkaksd/f$e;

    .line 6
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/f$q;->c:Lcom/qennnsad/aknkaksd/f$c;

    .line 7
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/f$q;->d:Lcom/qennnsad/aknkaksd/f$h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Lcom/qennnsad/aknkaksd/f$h;Landroid/view/View;Lcom/qennnsad/aknkaksd/f$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/qennnsad/aknkaksd/f$q;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Lcom/qennnsad/aknkaksd/f$h;Landroid/view/View;)V

    return-void
.end method
