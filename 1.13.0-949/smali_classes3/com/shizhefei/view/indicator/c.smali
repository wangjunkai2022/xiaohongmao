.class public interface abstract Lcom/shizhefei/view/indicator/c;
.super Ljava/lang/Object;
.source "Indicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shizhefei/view/indicator/c$e;,
        Lcom/shizhefei/view/indicator/c$c;,
        Lcom/shizhefei/view/indicator/c$d;,
        Lcom/shizhefei/view/indicator/c$a;,
        Lcom/shizhefei/view/indicator/c$b;
    }
.end annotation


# virtual methods
.method public abstract a(I)Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract b(IZ)V
.end method

.method public abstract c()Z
.end method

.method public abstract getCurrentItem()I
.end method

.method public abstract getIndicatorAdapter()Lcom/shizhefei/view/indicator/c$b;
.end method

.method public abstract getOnIndicatorItemClickListener()Lcom/shizhefei/view/indicator/c$c;
.end method

.method public abstract getOnItemSelectListener()Lcom/shizhefei/view/indicator/c$d;
.end method

.method public abstract getOnTransitionListener()Lcom/shizhefei/view/indicator/c$e;
.end method

.method public abstract getPreSelectItem()I
.end method

.method public abstract onPageScrollStateChanged(I)V
.end method

.method public abstract onPageScrolled(IFI)V
.end method

.method public abstract setAdapter(Lcom/shizhefei/view/indicator/c$b;)V
.end method

.method public abstract setCurrentItem(I)V
.end method

.method public abstract setItemClickable(Z)V
.end method

.method public abstract setOnIndicatorItemClickListener(Lcom/shizhefei/view/indicator/c$c;)V
.end method

.method public abstract setOnItemSelectListener(Lcom/shizhefei/view/indicator/c$d;)V
.end method

.method public abstract setOnTransitionListener(Lcom/shizhefei/view/indicator/c$e;)V
.end method

.method public abstract setScrollBar(Lcom/shizhefei/view/indicator/slidebar/ScrollBar;)V
.end method
