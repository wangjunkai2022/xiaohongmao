.class public final synthetic Lcom/google/android/gms/common/api/internal/a3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/v;


# instance fields
.field public final synthetic a:Ly2/d;


# direct methods
.method public synthetic constructor <init>(Ly2/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/a3;->a:Ly2/d;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/a3;->a:Ly2/d;

    check-cast p1, Lcom/google/android/gms/common/api/a$b;

    check-cast p2, Lcom/google/android/gms/tasks/l;

    invoke-interface {v0, p1, p2}, Ly2/d;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
