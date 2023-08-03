.class final Lcom/qennnsad/aknkaksd/f$g;
.super Ljava/lang/Object;
.source "DaggerBeautyLiveApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/d$e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/f$k;

.field private final b:Lcom/qennnsad/aknkaksd/f$e;

.field private final c:Lcom/qennnsad/aknkaksd/f$c;

.field private d:Landroidx/fragment/app/Fragment;


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
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$g;->a:Lcom/qennnsad/aknkaksd/f$k;

    .line 4
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/f$g;->b:Lcom/qennnsad/aknkaksd/f$e;

    .line 5
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/f$g;->c:Lcom/qennnsad/aknkaksd/f$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Lcom/qennnsad/aknkaksd/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/f$g;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/fragment/app/Fragment;)Lh6/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "fragment"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/f$g;->c(Landroidx/fragment/app/Fragment;)Lcom/qennnsad/aknkaksd/f$g;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/qennnsad/aknkaksd/d$e;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$g;->d:Landroidx/fragment/app/Fragment;

    const-class v1, Landroidx/fragment/app/Fragment;

    invoke-static {v0, v1}, Ldagger/internal/p;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/f$h;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/f$g;->a:Lcom/qennnsad/aknkaksd/f$k;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/f$g;->b:Lcom/qennnsad/aknkaksd/f$e;

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/f$g;->c:Lcom/qennnsad/aknkaksd/f$c;

    iget-object v6, p0, Lcom/qennnsad/aknkaksd/f$g;->d:Landroidx/fragment/app/Fragment;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/qennnsad/aknkaksd/f$h;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Landroidx/fragment/app/Fragment;Lcom/qennnsad/aknkaksd/f$a;)V

    return-object v0
.end method

.method public bridge synthetic build()Lf6/c;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/f$g;->b()Lcom/qennnsad/aknkaksd/d$e;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroidx/fragment/app/Fragment;)Lcom/qennnsad/aknkaksd/f$g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragment"
        }
    .end annotation

    invoke-static {p1}, Ldagger/internal/p;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$g;->d:Landroidx/fragment/app/Fragment;

    return-object p0
.end method
