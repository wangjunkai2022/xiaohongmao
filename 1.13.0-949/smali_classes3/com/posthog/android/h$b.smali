.class final Lcom/posthog/android/h$b;
.super Lcom/posthog/android/h;
.source "IntegrationOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/posthog/android/h;->a(Lcom/posthog/android/payloads/a;)Lcom/posthog/android/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/posthog/android/payloads/a;


# direct methods
.method constructor <init>(Lcom/posthog/android/payloads/a;)V
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/h$b;->c:Lcom/posthog/android/payloads/a;

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

    iget-object v0, p0, Lcom/posthog/android/h$b;->c:Lcom/posthog/android/payloads/a;

    invoke-virtual {p1, v0}, Lcom/posthog/android/g;->a(Lcom/posthog/android/payloads/a;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/android/h$b;->c:Lcom/posthog/android/payloads/a;

    invoke-virtual {v0}, Lcom/posthog/android/payloads/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
