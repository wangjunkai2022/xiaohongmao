.class final Lcom/qennnsad/aknkaksd/f$l;
.super Ljava/lang/Object;
.source "DaggerBeautyLiveApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/d$j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "l"
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/f$k;

.field private final b:Lcom/qennnsad/aknkaksd/f$e;

.field private final c:Lcom/qennnsad/aknkaksd/f$c;

.field private d:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$l;->a:Lcom/qennnsad/aknkaksd/f$k;

    .line 4
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/f$l;->b:Lcom/qennnsad/aknkaksd/f$e;

    .line 5
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/f$l;->c:Lcom/qennnsad/aknkaksd/f$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Lcom/qennnsad/aknkaksd/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/f$l;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;)Lh6/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/f$l;->c(Landroid/view/View;)Lcom/qennnsad/aknkaksd/f$l;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/qennnsad/aknkaksd/d$j;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$l;->d:Landroid/view/View;

    const-class v1, Landroid/view/View;

    invoke-static {v0, v1}, Ldagger/internal/p;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/f$m;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/f$l;->a:Lcom/qennnsad/aknkaksd/f$k;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/f$l;->b:Lcom/qennnsad/aknkaksd/f$e;

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/f$l;->c:Lcom/qennnsad/aknkaksd/f$c;

    iget-object v6, p0, Lcom/qennnsad/aknkaksd/f$l;->d:Landroid/view/View;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/qennnsad/aknkaksd/f$m;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Landroid/view/View;Lcom/qennnsad/aknkaksd/f$a;)V

    return-object v0
.end method

.method public bridge synthetic build()Lf6/e;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/f$l;->b()Lcom/qennnsad/aknkaksd/d$j;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/view/View;)Lcom/qennnsad/aknkaksd/f$l;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-static {p1}, Ldagger/internal/p;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$l;->d:Landroid/view/View;

    return-object p0
.end method
