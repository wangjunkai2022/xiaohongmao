.class public final synthetic Lcom/posthog/android/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/posthog/android/q;


# direct methods
.method public synthetic constructor <init>(Lcom/posthog/android/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/posthog/android/p;->a:Lcom/posthog/android/q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/posthog/android/p;->a:Lcom/posthog/android/q;

    invoke-static {v0}, Lcom/posthog/android/q;->a(Lcom/posthog/android/q;)V

    return-void
.end method
