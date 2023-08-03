.class final Lcom/google/android/gms/common/api/internal/j0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/c<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/tasks/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/c<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/l;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/j0;->b:Lcom/google/android/gms/tasks/l;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/j0;->a:Lcom/google/android/gms/common/api/internal/c;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/c<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j0;->a:Lcom/google/android/gms/common/api/internal/c;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/tasks/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j0;->b:Lcom/google/android/gms/tasks/l;

    return-object v0
.end method
