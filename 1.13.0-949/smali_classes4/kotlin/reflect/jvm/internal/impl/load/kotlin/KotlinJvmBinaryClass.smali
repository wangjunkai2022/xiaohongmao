.class public interface abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;
.super Ljava/lang/Object;
.source "KotlinJvmBinaryClass.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$MemberVisitor;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationVisitor;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$MethodAnnotationVisitor;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;
    }
.end annotation


# virtual methods
.method public abstract getClassHeader()Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract getClassId()Lkotlin/reflect/jvm/internal/impl/name/ClassId;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract getLocation()Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract loadClassAnnotations(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationVisitor;[B)V
    .param p1    # Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationVisitor;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lm8/h;
        .end annotation
    .end param
.end method

.method public abstract visitMembers(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$MemberVisitor;[B)V
    .param p1    # Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$MemberVisitor;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lm8/h;
        .end annotation
    .end param
.end method
