.class public Leltos/simpledialogfragment/form/CustomSpinnerView;
.super Landroidx/appcompat/widget/AppCompatSpinner;
.source "CustomSpinnerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leltos/simpledialogfragment/form/CustomSpinnerView$a;
    }
.end annotation


# instance fields
.field private a:Leltos/simpledialogfragment/form/CustomSpinnerView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 1

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/CustomSpinnerView;->a:Leltos/simpledialogfragment/form/CustomSpinnerView$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Leltos/simpledialogfragment/form/CustomSpinnerView$a;->e()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->performClick()Z

    move-result v0

    return v0
.end method

.method public setSpinnerEventsListener(Leltos/simpledialogfragment/form/CustomSpinnerView$a;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/form/CustomSpinnerView;->a:Leltos/simpledialogfragment/form/CustomSpinnerView$a;

    return-void
.end method
