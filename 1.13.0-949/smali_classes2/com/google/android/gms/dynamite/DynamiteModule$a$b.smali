.class public Lcom/google/android/gms/dynamite/DynamiteModule$a$b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamite/DynamiteModule$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I
    .annotation build Lu2/a;
    .end annotation
.end field

.field public b:I
    .annotation build Lu2/a;
    .end annotation
.end field

.field public c:I
    .annotation build Lu2/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;->a:I

    iput v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;->b:I

    iput v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;->c:I

    return-void
.end method
