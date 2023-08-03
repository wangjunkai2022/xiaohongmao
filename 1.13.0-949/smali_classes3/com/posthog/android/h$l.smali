.class final Lcom/posthog/android/h$l;
.super Lcom/posthog/android/h;
.source "IntegrationOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/posthog/android/h;->f(Landroid/app/Activity;)Lcom/posthog/android/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/h$l;->c:Landroid/app/Activity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/posthog/android/h;-><init>(Lcom/posthog/android/h$f;)V

    return-void
.end method


# virtual methods
.method public l(Lcom/posthog/android/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/posthog/android/g<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/posthog/android/h$l;->c:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/posthog/android/g;->g(Landroid/app/Activity;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Activity Destroyed"

    return-object v0
.end method
