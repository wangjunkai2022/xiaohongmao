.class final Lcom/posthog/android/h$f;
.super Lcom/posthog/android/h;
.source "IntegrationOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/posthog/android/h;->e(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/posthog/android/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/h$f;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/posthog/android/h$f;->d:Landroid/os/Bundle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/posthog/android/h;-><init>(Lcom/posthog/android/h$f;)V

    return-void
.end method


# virtual methods
.method public l(Lcom/posthog/android/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/posthog/android/g<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/posthog/android/h$f;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/posthog/android/h$f;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Lcom/posthog/android/g;->f(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Activity Created"

    return-object v0
.end method
