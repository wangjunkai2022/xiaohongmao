.class public final synthetic Lcom/google/android/play/core/internal/k;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/tasks/a;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/internal/t;

.field public final synthetic b:Lcom/google/android/play/core/tasks/o;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/internal/t;Lcom/google/android/play/core/tasks/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/k;->a:Lcom/google/android/play/core/internal/t;

    iput-object p2, p0, Lcom/google/android/play/core/internal/k;->b:Lcom/google/android/play/core/tasks/o;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/tasks/d;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/internal/k;->a:Lcom/google/android/play/core/internal/t;

    iget-object v1, p0, Lcom/google/android/play/core/internal/k;->b:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/core/internal/t;->r(Lcom/google/android/play/core/tasks/o;Lcom/google/android/play/core/tasks/d;)V

    return-void
.end method
