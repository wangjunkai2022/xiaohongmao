.class final Lcom/google/android/play/core/splitinstall/j1;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/play/core/splitinstall/f;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/play/core/splitinstall/k1;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/k1;Lcom/google/android/play/core/splitinstall/f;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/j1;->d:Lcom/google/android/play/core/splitinstall/k1;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/j1;->a:Lcom/google/android/play/core/splitinstall/f;

    iput p3, p0, Lcom/google/android/play/core/splitinstall/j1;->b:I

    iput p4, p0, Lcom/google/android/play/core/splitinstall/j1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/j1;->d:Lcom/google/android/play/core/splitinstall/k1;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/j1;->a:Lcom/google/android/play/core/splitinstall/f;

    iget v4, p0, Lcom/google/android/play/core/splitinstall/j1;->b:I

    iget v5, p0, Lcom/google/android/play/core/splitinstall/j1;->c:I

    new-instance v14, Lcom/google/android/play/core/splitinstall/h;

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/f;->h()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/f;->a()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/f;->j()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/f;->l()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/f;->k()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/f;->g()Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/f;->m()Ljava/util/List;

    move-result-object v13

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lcom/google/android/play/core/splitinstall/h;-><init>(IIIJJLjava/util/List;Ljava/util/List;Landroid/app/PendingIntent;Ljava/util/List;)V

    invoke-virtual {v0, v14}, Lcom/google/android/play/core/splitinstall/k1;->n(Lcom/google/android/play/core/splitinstall/f;)V

    return-void
.end method
