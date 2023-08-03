.class final Lcom/google/android/play/core/listener/c;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic a:Lcom/google/android/play/core/listener/d;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/core/listener/d;Lcom/google/android/play/core/listener/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/listener/c;->a:Lcom/google/android/play/core/listener/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/listener/c;->a:Lcom/google/android/play/core/listener/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/play/core/listener/d;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
