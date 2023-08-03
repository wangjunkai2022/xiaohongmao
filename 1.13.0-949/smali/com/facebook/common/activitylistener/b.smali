.class public Lcom/facebook/common/activitylistener/b;
.super Ljava/lang/Object;
.source "ActivityListenerManager.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/activitylistener/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/common/activitylistener/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/facebook/common/activitylistener/d;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/facebook/common/activitylistener/d;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lcom/facebook/common/activitylistener/d;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lcom/facebook/common/activitylistener/a;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activityListener",
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/activitylistener/b;->a(Landroid/content/Context;)Lcom/facebook/common/activitylistener/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/common/activitylistener/b$a;

    invoke-direct {v0, p0}, Lcom/facebook/common/activitylistener/b$a;-><init>(Lcom/facebook/common/activitylistener/a;)V

    .line 3
    invoke-interface {p1, v0}, Lcom/facebook/common/activitylistener/d;->a(Lcom/facebook/common/activitylistener/a;)V

    :cond_0
    return-void
.end method
