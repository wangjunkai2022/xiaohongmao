.class final Lcom/posthog/android/h$e;
.super Lcom/posthog/android/h;
.source "IntegrationOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/posthog/android/h;-><init>(Lcom/posthog/android/h$f;)V

    return-void
.end method


# virtual methods
.method l(Lcom/posthog/android/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/posthog/android/g<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/posthog/android/g;->m()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Reset"

    return-object v0
.end method
