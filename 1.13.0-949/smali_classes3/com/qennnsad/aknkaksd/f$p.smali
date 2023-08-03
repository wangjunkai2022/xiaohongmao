.class final Lcom/qennnsad/aknkaksd/f$p;
.super Ljava/lang/Object;
.source "DaggerBeautyLiveApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/d$n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "p"
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/f$k;

.field private final b:Lcom/qennnsad/aknkaksd/f$e;

.field private final c:Lcom/qennnsad/aknkaksd/f$c;

.field private final d:Lcom/qennnsad/aknkaksd/f$h;

.field private e:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Lcom/qennnsad/aknkaksd/f$h;)V
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
            "fragmentCImpl"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$p;->a:Lcom/qennnsad/aknkaksd/f$k;

    .line 4
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/f$p;->b:Lcom/qennnsad/aknkaksd/f$e;

    .line 5
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/f$p;->c:Lcom/qennnsad/aknkaksd/f$c;

    .line 6
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/f$p;->d:Lcom/qennnsad/aknkaksd/f$h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Lcom/qennnsad/aknkaksd/f$h;Lcom/qennnsad/aknkaksd/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/f$p;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Lcom/qennnsad/aknkaksd/f$h;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;)Lh6/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/f$p;->c(Landroid/view/View;)Lcom/qennnsad/aknkaksd/f$p;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/qennnsad/aknkaksd/d$n;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$p;->e:Landroid/view/View;

    const-class v1, Landroid/view/View;

    invoke-static {v0, v1}, Ldagger/internal/p;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/f$q;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/f$p;->a:Lcom/qennnsad/aknkaksd/f$k;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/f$p;->b:Lcom/qennnsad/aknkaksd/f$e;

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/f$p;->c:Lcom/qennnsad/aknkaksd/f$c;

    iget-object v6, p0, Lcom/qennnsad/aknkaksd/f$p;->d:Lcom/qennnsad/aknkaksd/f$h;

    iget-object v7, p0, Lcom/qennnsad/aknkaksd/f$p;->e:Landroid/view/View;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/qennnsad/aknkaksd/f$q;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Lcom/qennnsad/aknkaksd/f$h;Landroid/view/View;Lcom/qennnsad/aknkaksd/f$a;)V

    return-object v0
.end method

.method public bridge synthetic build()Lf6/g;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/f$p;->b()Lcom/qennnsad/aknkaksd/d$n;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/view/View;)Lcom/qennnsad/aknkaksd/f$p;
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

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$p;->e:Landroid/view/View;

    return-object p0
.end method
