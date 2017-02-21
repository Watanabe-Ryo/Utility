set clipboard=unnamed,autoselect
set number
"�t�@�C�����\��
set statusline=%F
"�ύX�`�F�b�N�\��
set statusline+=%m
"�ǂݍ��ݐ�p���ǂ����\��
set statusline+=%r
"�w���v�y�[�W�Ȃ�[HELP]�ƕ\��
set statusline+=%h
"�v���r���[�E�C���h�E�Ȃ�[Prevew]�ƕ\��
set statusline+=%w
"����ȍ~�͉E�񂹕\��
set statusline+=%=
"file encoding
set statusline+=[ENC=%{&fileencoding}]
"���ݍs��/�S�s��
set statusline+=[LOW=%l/%L]
" �X�e�[�^�X���C������ɕ\��(0:�\�����Ȃ��A1:2�ȏ�E�B���h�E�����鎞�����\��)
set laststatus=2
" �����R�[�h���w��̏��ŊJ�����Ƃ��� 
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp

" �ȉ��A��ʕ�������у^�u�ړ��Ɋւ���L�[�o�C���h

nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

