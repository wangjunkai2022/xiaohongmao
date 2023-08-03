.class final Lcom/qennnsad/aknkaksd/f$b;
.super Ljava/lang/Object;
.source "DaggerBeautyLiveApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/d$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/f$k;

.field private final b:Lcom/qennnsad/aknkaksd/f$e;

.field private c:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$b;->a:Lcom/qennnsad/aknkaksd/f$k;

    .line 4
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/f$b;->b:Lcom/qennnsad/aknkaksd/f$e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/f$b;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/app/Activity;)Lh6/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "activity"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/f$b;->b(Landroid/app/Activity;)Lcom/qennnsad/aknkaksd/f$b;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/app/Activity;)Lcom/qennnsad/aknkaksd/f$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    invoke-static {p1}, Ldagger/internal/p;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$b;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public bridge synthetic build()Lf6/a;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/f$b;->c()Lcom/qennnsad/aknkaksd/d$a;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/qennnsad/aknkaksd/d$a;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$b;->c:Landroid/app/Activity;

    const-class v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Ldagger/internal/p;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/f$c;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$b;->a:Lcom/qennnsad/aknkaksd/f$k;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$b;->b:Lcom/qennnsad/aknkaksd/f$e;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/f$b;->c:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/f$c;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Landroid/app/Activity;Lcom/qennnsad/aknkaksd/f$a;)V

    return-object v0
.end method
