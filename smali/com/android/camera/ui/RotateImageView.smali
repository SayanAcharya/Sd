.class public Lcom/android/camera/ui/RotateImageView;
.super Lcom/android/camera/ui/TwoStateImageView;
.source "RotateImageView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static final ANIMATION_SPEED:I = 0x10e

.field private static final TAG:Ljava/lang/String; = "RotateImageView"


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEnableAnimation:Z

.field private mNaturalPortrait:Z

.field private mStartDegree:I

.field private mTargetDegree:I

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;)V

    .line 44
    iput v0, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 45
    iput v0, p0, Lcom/android/camera/ui/RotateImageView;->mStartDegree:I

    .line 46
    iput v0, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    .line 48
    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 50
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 51
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 52
    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mNaturalPortrait:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v0, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 45
    iput v0, p0, Lcom/android/camera/ui/RotateImageView;->mStartDegree:I

    .line 46
    iput v0, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    .line 48
    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 50
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 51
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 52
    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mNaturalPortrait:Z

    .line 57
    return-void
.end method

.method private isOrientationPortrait()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 68
    iget v4, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    rem-int/lit16 v1, v4, 0xb4

    .line 72
    .local v1, "mapTo180Degree":I
    const/16 v4, 0x2d

    if-le v1, v4, :cond_0

    const/16 v4, 0x87

    if-ge v1, v4, :cond_0

    move v0, v2

    .line 74
    .local v0, "isLandscape":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/camera/ui/RotateImageView;->mNaturalPortrait:Z

    if-eqz v4, :cond_2

    .line 75
    if-nez v0, :cond_1

    .line 77
    :goto_1
    return v2

    .end local v0    # "isLandscape":Z
    :cond_0
    move v0, v3

    .line 72
    goto :goto_0

    .restart local v0    # "isLandscape":Z
    :cond_1
    move v2, v3

    .line 75
    goto :goto_1

    :cond_2
    move v2, v0

    .line 77
    goto :goto_1
.end method


# virtual methods
.method public isDefaultFocusHighlightNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .param p2, "foreground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 113
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v8, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 116
    .local v5, "bounds":Landroid/graphics/Rect;
    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v18, v20, v21

    .line 117
    .local v18, "w":I
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v9, v20, v21

    .line 119
    .local v9, "h":I
    if-eqz v18, :cond_0

    if-eqz v9, :cond_0

    .line 121
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 122
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v16

    .line 123
    .local v16, "time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    move-wide/from16 v20, v0

    cmp-long v20, v16, v20

    if-gez v20, :cond_6

    .line 124
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    move-wide/from16 v20, v0

    sub-long v20, v16, v20

    move-wide/from16 v0, v20

    long-to-int v7, v0

    .line 125
    .local v7, "deltaTime":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mStartDegree:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .end local v7    # "deltaTime":I
    :goto_1
    mul-int/lit16 v0, v7, 0x10e

    move/from16 v21, v0

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    add-int v6, v20, v21

    .line 127
    .local v6, "degree":I
    if-ltz v6, :cond_5

    rem-int/lit16 v6, v6, 0x168

    .line 128
    :goto_2
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->invalidate()V

    .line 135
    .end local v6    # "degree":I
    .end local v16    # "time":J
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingLeft()I

    move-result v11

    .line 136
    .local v11, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingTop()I

    move-result v15

    .line 137
    .local v15, "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingRight()I

    move-result v13

    .line 138
    .local v13, "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingBottom()I

    move-result v4

    .line 139
    .local v4, "bottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getWidth()I

    move-result v20

    sub-int v20, v20, v11

    sub-int v19, v20, v13

    .line 140
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getHeight()I

    move-result v20

    sub-int v20, v20, v15

    sub-int v10, v20, v4

    .line 142
    .local v10, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v14

    .line 145
    .local v14, "saveCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v20

    sget-object v21, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 151
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->isOrientationPortrait()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 152
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    int-to-float v0, v10

    move/from16 v21, v0

    int-to-float v0, v9

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 155
    .local v12, "ratio":F
    :goto_4
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    int-to-float v0, v10

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v12, v12, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 157
    .end local v12    # "ratio":F
    :cond_3
    div-int/lit8 v20, v19, 0x2

    add-int v20, v20, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-int/lit8 v21, v10, 0x2

    add-int v21, v21, v15

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 158
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 159
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    neg-int v0, v9

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 160
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 125
    .end local v4    # "bottom":I
    .end local v10    # "height":I
    .end local v11    # "left":I
    .end local v13    # "right":I
    .end local v14    # "saveCount":I
    .end local v15    # "top":I
    .end local v19    # "width":I
    .restart local v7    # "deltaTime":I
    .restart local v16    # "time":J
    :cond_4
    neg-int v7, v7

    goto/16 :goto_1

    .line 127
    .end local v7    # "deltaTime":I
    .restart local v6    # "degree":I
    :cond_5
    rem-int/lit16 v0, v6, 0x168

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v6, v0, 0x168

    goto/16 :goto_2

    .line 131
    .end local v6    # "degree":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    goto/16 :goto_3

    .line 154
    .end local v16    # "time":J
    .restart local v4    # "bottom":I
    .restart local v10    # "height":I
    .restart local v11    # "left":I
    .restart local v13    # "right":I
    .restart local v14    # "saveCount":I
    .restart local v15    # "top":I
    .restart local v19    # "width":I
    :cond_7
    int-to-float v0, v10

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v9

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .restart local v12    # "ratio":F
    goto/16 :goto_4
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 171
    if-nez p1, :cond_0

    .line 172
    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 173
    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 199
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 180
    .local v2, "param":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingRight()I

    move-result v4

    sub-int v1, v3, v4

    .line 182
    .local v1, "miniThumbWidth":I
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 183
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 184
    .local v0, "miniThumbHeight":I
    invoke-static {p1, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 187
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    if-nez v3, :cond_2

    .line 188
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 189
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v7

    .line 190
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    aput-object v4, v3, v8

    .line 193
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v7

    .line 194
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v4, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 195
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1
.end method

.method public setOrientation(IZ)V
    .locals 6
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 83
    iput-boolean p2, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 85
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 86
    :goto_0
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 108
    :goto_1
    return-void

    .line 85
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 88
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    .line 89
    iget-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    if-eqz v1, :cond_5

    .line 90
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mStartDegree:I

    .line 91
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 93
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    iget v2, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 94
    .local v0, "diff":I
    if-ltz v0, :cond_3

    .line 98
    :goto_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 100
    :cond_2
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    .line 101
    iget-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 102
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    div-int/lit16 v1, v1, 0x10e

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 107
    .end local v0    # "diff":I
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->invalidate()V

    goto :goto_1

    .line 94
    .restart local v0    # "diff":I
    :cond_3
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 100
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 104
    .end local v0    # "diff":I
    :cond_5
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    goto :goto_4
.end method
