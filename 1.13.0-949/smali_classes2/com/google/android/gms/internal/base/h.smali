.class final Lcom/google/android/gms/internal/base/h;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/base/h;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/base/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/base/h;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/base/h;->a:I

    iget p1, p1, Lcom/google/android/gms/internal/base/h;->b:I

    iput p1, p0, Lcom/google/android/gms/internal/base/h;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/base/h;->a:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/base/i;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/base/i;-><init>(Lcom/google/android/gms/internal/base/h;)V

    return-object v0
.end method
