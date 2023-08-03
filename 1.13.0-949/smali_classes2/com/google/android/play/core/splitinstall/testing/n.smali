.class public final synthetic Lcom/google/android/play/core/splitinstall/testing/n;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/splitinstall/testing/a;

.field public final synthetic b:J

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/splitinstall/testing/a;JLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/n;->a:Lcom/google/android/play/core/splitinstall/testing/a;

    iput-wide p2, p0, Lcom/google/android/play/core/splitinstall/testing/n;->b:J

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/testing/n;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/play/core/splitinstall/testing/n;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/play/core/splitinstall/testing/n;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/n;->a:Lcom/google/android/play/core/splitinstall/testing/a;

    iget-wide v1, p0, Lcom/google/android/play/core/splitinstall/testing/n;->b:J

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/testing/n;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/testing/n;->d:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/testing/n;->e:Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/splitinstall/testing/a;->u(JLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
