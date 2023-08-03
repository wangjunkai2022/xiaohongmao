.class public Lcom/google/android/gms/tasks/b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.1"


# instance fields
.field private final a:Lcom/google/android/gms/tasks/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/v;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/v;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/b;->a:Lcom/google/android/gms/tasks/v;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/b;->a:Lcom/google/android/gms/tasks/v;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/v;->c()V

    return-void
.end method

.method public b()Lcom/google/android/gms/tasks/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/b;->a:Lcom/google/android/gms/tasks/v;

    return-object v0
.end method
