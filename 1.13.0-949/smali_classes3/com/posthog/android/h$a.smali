.class final Lcom/posthog/android/h$a;
.super Lcom/posthog/android/h;
.source "IntegrationOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/posthog/android/h;->m(Lcom/posthog/android/payloads/e;)Lcom/posthog/android/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/posthog/android/payloads/e;


# direct methods
.method constructor <init>(Lcom/posthog/android/payloads/e;)V
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/h$a;->c:Lcom/posthog/android/payloads/e;

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

    iget-object v0, p0, Lcom/posthog/android/h$a;->c:Lcom/posthog/android/payloads/e;

    invoke-virtual {p1, v0}, Lcom/posthog/android/g;->n(Lcom/posthog/android/payloads/e;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/android/h$a;->c:Lcom/posthog/android/payloads/e;

    invoke-virtual {v0}, Lcom/posthog/android/payloads/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
