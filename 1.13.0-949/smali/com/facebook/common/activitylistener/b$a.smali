.class Lcom/facebook/common/activitylistener/b$a;
.super Lcom/facebook/common/activitylistener/c;
.source "ActivityListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/activitylistener/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/common/activitylistener/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/activitylistener/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityListener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/common/activitylistener/c;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/common/activitylistener/b$a;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private g(Landroid/app/Activity;)Lcom/facebook/common/activitylistener/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/common/activitylistener/b$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/activitylistener/a;

    if-nez v0, :cond_0

    .line 2
    instance-of v1, p1, Lcom/facebook/common/activitylistener/d;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/j;->d(Ljava/lang/Boolean;)V

    .line 3
    check-cast p1, Lcom/facebook/common/activitylistener/d;

    .line 4
    invoke-interface {p1, p0}, Lcom/facebook/common/activitylistener/d;->b(Lcom/facebook/common/activitylistener/a;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/common/activitylistener/b$a;->g(Landroid/app/Activity;)Lcom/facebook/common/activitylistener/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/facebook/common/activitylistener/a;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/common/activitylistener/b$a;->g(Landroid/app/Activity;)Lcom/facebook/common/activitylistener/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/facebook/common/activitylistener/a;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/common/activitylistener/b$a;->g(Landroid/app/Activity;)Lcom/facebook/common/activitylistener/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/facebook/common/activitylistener/a;->c(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/common/activitylistener/b$a;->g(Landroid/app/Activity;)Lcom/facebook/common/activitylistener/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/facebook/common/activitylistener/a;->d(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/common/activitylistener/b$a;->g(Landroid/app/Activity;)Lcom/facebook/common/activitylistener/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/facebook/common/activitylistener/a;->e(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public f(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/common/activitylistener/b$a;->g(Landroid/app/Activity;)Lcom/facebook/common/activitylistener/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/facebook/common/activitylistener/a;->f(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
