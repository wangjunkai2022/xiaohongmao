.class final Lcom/qennnsad/aknkaksd/f$m;
.super Lcom/qennnsad/aknkaksd/d$j;
.source "DaggerBeautyLiveApplication_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "m"
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/f$k;

.field private final b:Lcom/qennnsad/aknkaksd/f$e;

.field private final c:Lcom/qennnsad/aknkaksd/f$c;

.field private final d:Lcom/qennnsad/aknkaksd/f$m;


# direct methods
.method private constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl",
            "viewParam"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/d$j;-><init>()V

    .line 3
    iput-object p0, p0, Lcom/qennnsad/aknkaksd/f$m;->d:Lcom/qennnsad/aknkaksd/f$m;

    .line 4
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$m;->a:Lcom/qennnsad/aknkaksd/f$k;

    .line 5
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/f$m;->b:Lcom/qennnsad/aknkaksd/f$e;

    .line 6
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/f$m;->c:Lcom/qennnsad/aknkaksd/f$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Landroid/view/View;Lcom/qennnsad/aknkaksd/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/f$m;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Landroid/view/View;)V

    return-void
.end method
