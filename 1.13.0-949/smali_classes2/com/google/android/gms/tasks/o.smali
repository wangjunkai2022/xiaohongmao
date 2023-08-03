.class final Lcom/google/android/gms/tasks/o;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/tasks/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/g<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/v;Lcom/google/android/gms/tasks/h;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/tasks/o;->a:Lcom/google/android/gms/tasks/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/google/android/gms/tasks/o;->a:Lcom/google/android/gms/tasks/h;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/tasks/h;->b()V

    return-void
.end method
